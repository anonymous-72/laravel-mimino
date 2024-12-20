<x-app-layout title="{{ __('messages.menu') }}">
    <x-page-title
        title="{{ __('messages.menu') }}"
        subtitle="{{ __('messages.menu-subtitle') }}"
    />
    <ul class="mt-3 md:mt-6 lg:mt-12 flex flex-row justify-between gap-1 md:gap-2 overflow-x-auto whitespace-nowrap scrollbar-hide scroll-smooth shadow-lg">
        @foreach ($categories as $category)
            <li class="inline-block px-4 py-2 text-xs md:text-base lg:text-xl font-medium rounded-xl cursor-pointer hover:bg-red transition-all duration-300 ease-in-out hover:shadow-2xl">
                <a href="#">{{ $category->categoryTranslations->first()->name }}</a>
            </li>
        @endforeach
    </ul>
</x-app-layout>
