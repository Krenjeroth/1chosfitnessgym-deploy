<?php

namespace App\Http\Controllers;

use App\Models\Membership;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

use Illuminate\Support\Facades\Storage;
use App\Http\Resources\MembershipResource;
use App\Http\Requests\StoreMembershipRequest;
use App\Http\Requests\UpdateMembershipRequest;

class MembershipController extends Controller
{
    public function index(Request $request) {
      Gate::authorize('membership_index');

      $query = Membership::query();

      if($request->has('search')) {
        $search = $request->search;
        $query->where(function ($q) use($search) {
          $q->whereHas('member', function($memberQuery) use ($search) {
            $memberQuery->where('full_name', 'LIKE', "%{$search}%");
          });
          // $q->where('member', 'LIKE', "%{$search}%")
          // ->orWhere('email', 'LIKE', "%{$search}%");
        });
      }

      // Status filter (active/expired)
      if ($request->has('status')) {
        $query->where('status', $request->status);
      }

      // Sorting (default to ID)
      if ($request->has('sort')) {
        $order = $request->input('order', 'asc');
        $query->orderBy($request->sort, $order);
      }

      // Paginate with customizable per-page count
      $members = $query->paginate($request->input('per_page', 5))->appends($request->query());

      return response()->json([
          'data' => MembershipResource::collection($members),
          'meta' => [
              'total' => $members->total(),
              'per_page' => $members->perPage(),
              'current_page' => $members->currentPage(),
              'last_page' => $members->lastPage(),
          ]
      ]);
    }

    public function store(StoreMembershipRequest $request) {
      Gate::authorize('membership_store');
      
      $data = $request->validated();

      $membership = Membership::create($data);

      return new MembershipResource($membership);
    }

    public function update(UpdateMembershipRequest $request, Membership $membership) {
      Gate::authorize('membership_update');

      $data = $request->validated();

      $membership->update($data);

      return new MembershipResource($membership);
    }

    public function destroy(Membership $membership) {
      Gate::authorize('membership_destroy');


      $membership->delete();
      
      return new MembershipResource($membership);
    }
}
