@props(['title' => '', 'subtitle' => ''])

<div class="py-4">
    <div class="flex flex-col gap-1 md:gap-2 lg:gap-3">
        <h1 class="text-2xl md:text-4xl lg:text-6xl font-semibold">{{ $title }}</h1>
        <p class="text-[10px] md:text-base lg:text-lg text-gray-500 font-medium">{{ $subtitle }}</p>
    </div>
    <div class="mt-2 md:mt-4 w-full h-1 md:h-2 rounded-xl bg-custom-gradient" />
</div>
