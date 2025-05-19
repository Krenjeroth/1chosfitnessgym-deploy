<?php

namespace App\Http\Controllers;

use App\Models\Plan;
use Illuminate\Http\Request;
use App\Http\Resources\PlanResource;
use Illuminate\Support\Facades\Gate;
use App\Http\Requests\StorePlanRequest;
use App\Http\Requests\UpdatePlanRequest;

class PlanController extends Controller
{
    public function index(Request $request) {
        Gate::authorize('plan_index');

        $query = Plan::query();

        // Search by name or email
        if($request->has('search')) {
          $search = $request->search;
          $query->where(function ($q) use($search) {
            $q->where('name', 'LIKE', "%{$search}%")
            ->orWhere('description', 'LIKE', "%{$search}%");
          });
        }

        // Status filter (active/inactive)
        if ($request->has('status')) {
          $query->where('status', $request->status);
        }

        // Sorting (default to ID)
        if ($request->has('sort')) {
          $order = $request->input('order', 'asc');
          $query->orderBy($request->sort, $order);
        }

        // Paginate with customizable per-page count
        $plans = $query->paginate($request->input('per_page', 5))->appends($request->query());

        return response()->json([
            'data' => PlanResource::collection($plans),
            'meta' => [
                'total' => $plans->total(),
                'per_page' => $plans->perPage(),
                'current_page' => $plans->currentPage(),
                'last_page' => $plans->lastPage(),
            ]
        ]);
    }

    public function store(StorePlanRequest $request) {
      Gate::authorize('plan_store');
      
      $data = $request->validated();

      $plan = Plan::create($data);

      return new PlanResource($plan);
    }

    public function update(UpdatePlanRequest $request, Plan $plan) {
      Gate::authorize('plan_update');

      $data = $request->validated();

      $plan->update($data);

      return new PlanResource($plan);
    }

    public function destroy(Plan $plan) {
      Gate::authorize('plan_destroy');

      $plan->delete();
      
      return new PlanResource($plan);
    }

    public function select()
    {
        $plans = Plan::all();

        return response()->json([
          'data' => PlanResource::collection($plans)
        ]);
    }
}
