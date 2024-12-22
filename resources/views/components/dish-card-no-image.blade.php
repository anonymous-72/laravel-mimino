@props([
    'weight' => '',
    'price' => 0,
    'name' => '',
    'unit' => ''
])

<div class="p-4 lg:p-6 bg-[#101010] border-2 border-red rounded-xl">
    <div class="flex justify-between items-center">
        <h2 class="text-sm md:text-lg lg:text-xl font-semibold">
            {{ $name }} {{ $weight }}{{ $unit }}
        </h2>
        <span class="font-medium text-lg">{{ $price }} MDL</span>
    </div>
</div>
