<footer class="border-t border-red bg-[#101010] mt-10 p-6 md:p-12 lg:p-18">
    <div class="grid gap-6 grid-cols-1 md:grid-cols-2 lg:grid-cols-3 pb-6 md:pb-12 lg:pb-18 border-b border-gray-400">
        <img src="{{ asset('logo-light.png') }}" alt="Logo" class="w-20 h-20">
        <ul class="flex flex-col gap-6">
            <h4 class="font-semibold text-lg md:text-xl lg:text-2xl border-b-2 border-red pb-2 w-full md:w-fit">{{ __('messages.general-information') }}</h4>
            <li class="flex gap-2 items-center text-lg">
                <img src="{{ asset('icons/phone.svg') }}" alt="Phone" class="w-5 h-5">
                <a href="tel:+37322897897" class="text-base md:text-lg lg:text-xl link">022 897 897</a>
            </li>
            <li class="flex gap-2 items-center text-lg">
                <img src="{{ asset('icons/email.svg') }}" alt="Email" class="w-5 h-5">
                <a href="mailto:info@mimino.md" class="text-base md:text-lg lg:text-xl link">info@mimino.md</a>
            </li>
            <li class="flex gap-2 items-center text-lg">
                <img src="{{ asset('icons/working-hours.svg') }}" alt="Working Hours" class="w-5 h-5">
                <p class="text-base md:text-lg lg:text-xl">{{ __('messages.working-hours') }}</p>
            </li>
        </ul>
        <ul class="flex flex-col gap-6">
            <h4 class="font-semibold text-lg md:text-xl lg:text-2xl border-b-2 border-red pb-2 w-full md:w-fit">{{ __('messages.social-media') }}</h4>
            <li class="flex gap-2 items-center">
                <img src="{{ asset('icons/instagram.svg') }}" alt="Instagram" class="w-5 h-5">
                <a href="https://www.instagram.com/miminomd/" target="_blank" class="flex gap-1 items-center link text-base md:text-lg lg:text-xl font-medium">
                    Instagram <img src="{{ asset('icons/arrow-right.svg') }}" alt="Arrow Right" class="w-5 h-5">
                </a>
            </li>
            <li class="flex gap-3 items-center">
                <img src="{{ asset('icons/facebook.svg') }}" alt="Facebook" class="w-5 h-5">
                <a href="https://www.facebook.com/mimino.moldova" target="_blank" class="flex gap-1 items-center link text-base md:text-lg lg:text-xl font-medium">
                    Facebook <img src="{{ asset('icons/arrow-right.svg') }}" alt="Arrow Right" class="w-5 h-5">
                </a>
            </li>
        </ul>
    </div>
    <div class="flex items-center justify-center gap-2 text-sm md:text-base lg:text-lg font-semibold pt-3 md:pt-6 lg:pt-9">
        <h5>2025 &copy; Serghei Bordeniuc</h5>
        <div class="flex items-center gap-2">
            <a href="https://github.com/anonymous-72" target="_blank">
                <img src="{{ asset('/icons/github.svg') }}" alt="GitHub" class="w-5 h-5">
            </a>
            <a href="https://www.linkedin.com/in/serghei-bordeniuc-557291271/" target="_blank">
                <img src="{{ asset('/icons/linkedin.svg') }}" alt="LinkedIn" class="w-5 h-5">
            </a>
        </div>
    </div>
</footer>
