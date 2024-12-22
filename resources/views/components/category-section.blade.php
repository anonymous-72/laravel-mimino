@props(['id' => '', 'title' => ''])

<section id="{{ $id }}" class="mb-20 md:mb-24 md:mb-28">
    <div class="flex items-center mb-4 md:mb-8 lg:mb-12">
        <div class="flex-grow h-1 md:h-2 rounded-xl bg-custom-gradient"></div>
        <h2 class="mx-4 text-xl md:text-2xl lg:text-4xl font-semibold text-center whitespace-nowrap">
            {{ $title }}
        </h2>
        <div class="flex-grow h-1 md:h-2 rounded-xl bg-custom-gradient-reverse"></div>
    </div>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-2 md:gap-4 lg:gap-6">
        {{ $slot }}
    </div>
</section>
