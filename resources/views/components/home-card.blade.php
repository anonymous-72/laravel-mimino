@props(['title' => '', 'description' => '', 'icon' => '', 'link' => ''])

<div class="bg-[#101010] border border-red rounded-xl p-6 flex flex-col items-center justify-between gap-3">
    <img src="{{ asset('icons/' . $icon . '.svg') }}" alt="{{ $title }}" class="w-16 h-16 md:w-20 md:h-20">
    <h2 class="text-lg md:text-xl lg:text-2xl font-semibold">{{ $title }}</h2>
    <p class="text-xs md:text-sm lg:text-base text-slate-300 text-center">{{ $description }}</p>
    <a href="{{ route($link) }}" class="flex gap-1 items-center bg-red text-white px-4 py-2 text-sm md:text-base lg:text-lg font-medium hover:bg-[#bd3a3a] rounded-xl transition-all duration-300 ease-in-out hover:shadow-2xl">
        {{ __('messages.follow-the-link') }}
        <img src="{{ asset('icons/arrow-right.svg') }}" alt="Arrow Right" class="w-5 h-5">
    </a>
</div>
