<header class="fixed top-0 left-0 w-full z-50 bg-red px-6 md:px-12 lg:px-18">
    <nav class="flex justify-between items-center">
        <a href="{{ route('home') }}">
            <img src="{{ asset('logo-light.png') }}" alt="Logo" class="w-20 h-20">
        </a>
        <button class="md:hidden flex flex-col justify-center items-center w-10 h-10 relative z-50 group"
                onclick="toggleMenu()"
                id="burger-button">
            <div class="w-6 h-0.5 bg-white transition-all duration-300 ease-in-out rounded-full group-hover:bg-opacity-80 origin-center transform group-[.active]:translate-y-2 group-[.active]:rotate-45"></div>
            <div class="w-6 h-0.5 bg-white transition-all duration-300 ease-in-out rounded-full mt-1.5 group-hover:bg-opacity-80 group-[.active]:opacity-0"></div>
            <div class="w-6 h-0.5 bg-white transition-all duration-300 ease-in-out rounded-full mt-1.5 group-hover:bg-opacity-80 origin-center transform group-[.active]:-translate-y-2 group-[.active]:-rotate-45"></div>
        </button>
        <div id="mobile-menu" class="fixed inset-0 bg-red transform transition-transform duration-300 ease-in-out translate-x-full md:hidden">
            <div class="flex flex-col items-center justify-center h-full">
                <ul class="flex flex-col gap-8 text-center">
                    <li><a href="{{ route('home') }}" class="text-white font-semibold text-xl transition-colors duration-200 hover:text-opacity-80 {{ Route::currentRouteName() === 'home' ? 'underline' : '' }}">{{ __('messages.home') }}</a></li>
                    <li><a href="{{ route('about') }}" class="text-white font-semibold text-xl transition-colors duration-200 hover:text-opacity-80 {{ Route::currentRouteName() === 'about' ? 'underline' : '' }}">{{ __('messages.about') }}</a></li>
                    <li><a href="{{ route('menu') }}" class="text-white font-semibold text-xl transition-colors duration-200 hover:text-opacity-80 {{ Route::currentRouteName() === 'menu' ? 'underline' : '' }}">{{ __('messages.menu') }}</a></li>
                    <li><a href="{{ route('reservation') }}" class="text-white font-semibold text-xl transition-colors duration-200 hover:text-opacity-80 {{ Route::currentRouteName() === 'reservation' ? 'underline' : '' }}">{{ __('messages.reservation') }}</a></li>
                </ul>
                <div class="flex gap-6 mt-12">
                    <x-language-link
                        locale="ru"
                        title="Русский"
                        flag="russia.png"
                        alt="Russian"
                        lang="RU"
                    />
                    <x-language-link
                        locale="ro"
                        title="Română"
                        flag="romania.png"
                        alt="Romanian"
                        lang="RO"
                    />
                    <x-language-link
                        locale="en"
                        title="English"
                        flag="united-states.png"
                        alt="English"
                        lang="EN"
                    />
                </div>
            </div>
        </div>
        <ul class="hidden md:flex gap-10 py-8">
            <li><a href="{{ route('home') }}" class="text-white font-semibold text-lg transition-colors duration-200 hover:text-opacity-80 {{ Route::currentRouteName() === 'home' ? 'underline' : '' }}">{{ __('messages.home') }}</a></li>
            <li><a href="{{ route('about') }}" class="text-white font-semibold text-lg transition-colors duration-200 hover:text-opacity-80 {{ Route::currentRouteName() === 'about' ? 'underline' : '' }}">{{ __('messages.about') }}</a></li>
            <li><a href="{{ route('menu') }}" class="text-white font-semibold text-lg transition-colors duration-200 hover:text-opacity-80 {{ Route::currentRouteName() === 'menu' ? 'underline' : '' }}">{{ __('messages.menu') }}</a></li>
            <li><a href="{{ route('reservation') }}" class="text-white font-semibold text-lg transition-colors duration-200 hover:text-opacity-80 {{ Route::currentRouteName() === 'reservation' ? 'underline' : '' }}">{{ __('messages.reservation') }}</a></li>
        </ul>
        <div class="hidden md:flex gap-3 py-8">
            <x-language-link
                locale="ru"
                title="Русский"
                flag="russia.png"
                alt="Russian"
                lang="RU"
            />
            <x-language-link
                locale="ro"
                title="Română"
                flag="romania.png"
                alt="Romanian"
                lang="RO"
            />
            <x-language-link
                locale="en"
                title="English"
                flag="united-states.png"
                alt="English"
                lang="EN"
            />
        </div>
    </nav>
    <script>
        function toggleMenu() {
            const mobileMenu = document.getElementById('mobile-menu');
            const burgerButton = document.getElementById('burger-button');

            mobileMenu.classList.toggle('translate-x-full');

            burgerButton.classList.toggle('active');

            document.body.classList.toggle('overflow-hidden');
        }
    </script>
</header>
