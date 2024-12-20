<x-app-layout title="{{ __('messages.menu') }}">
    <x-page-title
        title="{{ __('messages.menu') }}"
        subtitle="{{ __('messages.menu-subtitle') }}"
    />
    <ul class="my-3 md:my-6 lg:my-12 flex flex-row justify-between gap-1 md:gap-2 overflow-x-auto whitespace-nowrap scrollbar-hide scroll-smooth shadow-lg">
        @foreach ($categories as $category)
            <li>
                <a href="#{{ $category->slug }}" class="inline-block px-4 py-2 text-xs md:text-base lg:text-xl font-medium rounded-xl hover:bg-red transition-all duration-300 ease-in-out hover:shadow-2xl">
                    {{ $category->categoryTranslations->first()->name }}
                </a>
            </li>
        @endforeach
    </ul>
    @foreach ($categories as $category)
        <x-category-section
            id="{{ $category->slug }}"
            title="{{ $category->categoryTranslations->first()->name }}"
        >
            @foreach ($category->dishes as $dish)
                <span>{{ $dish->slug }}</span>
            @endforeach
        </x-category-section>
    @endforeach
</x-app-layout>
