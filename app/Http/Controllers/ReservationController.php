<?php

namespace App\Http\Controllers;

use App\Http\Requests\ReservationRequest;
use App\Mail\ReservationDeclineMail;
use App\Models\Reservation;
use App\Models\Table;
use Illuminate\Http\Request;

class ReservationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $availableTables = Table::where('status', 'available')->get();
        return view('reservation.create', ['availableTables' => $availableTables]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ReservationRequest $request)
    {
        $validated = $request->validated();

        $table = Table::findOrFail($validated['table_id']);
        if ($table->status !== 'available') {
            return back()->withErrors(['table_id' => 'The selected table is no longer available.'])->withInput();
        }

        Reservation::create([
            'table_id' => $validated['table_id'],
            'name' => $validated['name'],
            'email' => $validated['email'],
            'phone_number' => $validated['phone_number'],
            'reservation_date' => $validated['reservation_date'],
            'comment' => $validated['comment'] ?? null,
            'status' => 'pending',
        ]);

        $table->update(['status' => 'reserved']);

        return redirect()->route('reservation.create')->with('success', 'Reservation created successfully and is pending confirmation.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
