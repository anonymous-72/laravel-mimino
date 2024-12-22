<x-app-layout title="{{ __('messages.menu') }}">
    <x-page-title
        title="{{ __('messages.menu') }}"
        subtitle="{{ __('messages.menu-subtitle') }}"
    />
    <ul class="my-3 md:my-6 lg:my-12 flex flex-row justify-between gap-1 md:gap-2 overflow-x-auto whitespace-nowrap scrollbar-hide scroll-smooth shadow-lg">
        @foreach ($categories as $category)
            <li>
                <a
                    href="#{{ $category->slug }}"
                    class="inline-block px-4 py-2 text-xs md:text-base lg:text-xl font-medium rounded-xl hover:bg-red transition-all duration-300 ease-in-out hover:shadow-2xl category-link"
                    data-category-id="{{ $category->slug }}"
                >
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
                @if ($dish->image === null)
                    <x-dish-card-no-image
                        weight="{{ $dish->weight }}"
                        price="{{ $dish->price }}"
                        name="{!! $dish->dishTranslations->first()->name !!}"
                        unit="{{ $dish->dishTranslations->first()->unit }}"
                    />
                @else
                    <x-dish-card
                        category_slug="{{ $category->slug }}"
                        dish_slug="{{ $dish->slug }}"
                        image="{{ $dish->image }}"
                        weight="{{ $dish->weight }}"
                        price="{{ $dish->price }}"
                        is_new="{{ $dish->is_new }}"
                        name="{!! $dish->dishTranslations->first()->name !!}"
                        description="{!! $dish->dishTranslations->first()->description !!}"
                        unit="{{ $dish->dishTranslations->first()->unit }}"
                    />
                @endif
            @endforeach
        </x-category-section>
    @endforeach

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const categoryLinks = document.querySelectorAll('.category-link');

            categoryLinks.forEach(link => {
                link.addEventListener('click', function (event) {
                    event.preventDefault();

                    const targetId = this.getAttribute('data-category-id');
                    const targetElement = document.getElementById(targetId);

                    if (targetElement) {
                        targetElement.scrollIntoView({ behavior: 'smooth' });
                    }
                });
            });

            window.history.replaceState(null, '', window.location.pathname);
        });
    </script>
</x-app-layout>
