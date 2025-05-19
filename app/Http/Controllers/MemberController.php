<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Storage;
use App\Models\Member;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Gate;
use App\Http\Resources\MemberResource;
use App\Http\Requests\StoreMemberRequest;
use App\Http\Requests\UpdateMemberRequest;

class MemberController extends Controller
{
    public function index(Request $request) {
      Gate::authorize('member_index');

      $query = Member::query();

      if($request->has('search')) {
        $search = $request->search;
        $query->where(function ($q) use($search) {
          $q->where('full_name', 'LIKE', "%{$search}%")
          ->orWhere('email', 'LIKE', "%{$search}%");
        });
      }

      // Sorting (default to ID)
      if ($request->has('sort')) {
        $order = $request->input('order', 'asc');
        $query->orderBy($request->sort, $order);
      }

      // Paginate with customizable per-page count
      $members = $query->paginate($request->input('per_page', 5))->appends($request->query());

      return response()->json([
          'data' => MemberResource::collection($members),
          'meta' => [
              'total' => $members->total(),
              'per_page' => $members->perPage(),
              'current_page' => $members->currentPage(),
              'last_page' => $members->lastPage(),
          ]
      ]);

    }

    public function store(StoreMemberRequest $request) {
      Gate::authorize('member_store');

      $validated = $request->validated();

      if($request->hasFile('photo_id')) {
        $path = $request->file('photo_id')->store('members/images/id', 'public');
        $validated['img_path'] = $path;
      }

      $member = Member::create($validated);

      return new MemberResource($member);
    }

    public function update(UpdateMemberRequest $request, Member $member) {
      Gate::authorize('member_update');

      $data = $request->validated();

      // Only keep fields that are different from current values
      $changedData = [];
      foreach ($data as $key => $value) {
        if ($member->$key !== $value) {
          $changedData[$key] = $value;
        }
      }

      if (!empty($changedData)) {
        if($request->hasFile('photo_id')) {
          $storage_public = Storage::disk('public');
          if ($member->img_path && $storage_public->exists($member->img_path)) {
            $storage_public->delete($member->img_path);
          }

          $path = $request->file('photo_id')->store('members/images/id', 'public');
          $changedData['img_path'] = $path;
        }

        $member->update($changedData);
      }

      return new MemberResource($member);
    }

    public function destroy(Member $member) {
      Gate::authorize('member_destroy');

      $storage_public = Storage::disk('public');
      if ($member->img_path && $storage_public->exists($member->img_path)) {
        $storage_public->delete($member->img_path);
      }

      $member->delete();
      
      return new MemberResource($member);
    }

    public function select()
    {
        // ?? All Members
        $members = Member::with('memberships')->get();

        return response()->json([
          'data' => MemberResource::collection($members)
        ]);
    }

    public function memberNoMembership()
    {
        // ?? Member no active membership
        $members = Member::with('memberships')->whereDoesntHave('memberships', function ($query) {
            $query->where('status', true);
        })->get();

        return response()->json([
          'data' => MemberResource::collection($members)
        ]);
    }
}
