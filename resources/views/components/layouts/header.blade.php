<header class="fixed top-0 left-0 w-full z-50 bg-red px-6 md:px-12 lg:px-18">
    <nav class="flex justify-between items-center">
        <a href="{{ route('home') }}">
            <img src="{{ asset('logo-light.png') }}" alt="Logo" class="w-20 h-20">
        </a>
        <ul class="hidden md:flex gap-10 py-8">
            <li><a href="{{ route('home') }}" class="text-white font-semibold text-lg link {{ Route::currentRouteName() === 'home' ? 'link-active' : '' }}">{{ __('messages.home') }}</a></li>
            <li><a href="{{ route('about') }}" class="text-white font-semibold text-lg link {{ Route::currentRouteName() === 'about' ? 'link-active' : '' }}">{{ __('messages.about') }}</a></li>
            <li><a href="{{ route('menu') }}" class="text-white font-semibold text-lg link {{ Route::currentRouteName() === 'menu' ? 'link-active' : '' }}">{{ __('messages.menu') }}</a></li>
            <li><a href="{{ route('reservation') }}" class="text-white font-semibold text-lg link {{ Route::currentRouteName() === 'reservation' ? 'link-active' : '' }}">{{ __('messages.reservation') }}</a></li>
        </ul>
        <div class="hidden md:flex gap-3 py-8">
            <x-language-link
                locale="ru"
                title="Русский"
                flag_path="flags/russia.png"
                alt="Russian"
                lang="RU"
            />
            <x-language-link
                locale="ro"
                title="Română"
                flag_path="flags/romania.png"
                alt="Romanian"
                lang="RO"
            />
            <x-language-link
                locale="en"
                title="English"
                flag_path="flags/united-states.png"
                alt="English"
                lang="EN"
            />
        </div>
    </nav>
</header>
