<x-app-layout title="{{ __('messages.reservation') }}">
    <x-page-title
        title="{{ __('messages.reservation') }}"
        subtitle="{{ __('messages.reservation-subtitle') }}"
    />
    <div class="max-w-6xl mx-auto p-6 my-8 rounded-xl shadow-lg">
        <div class="text-center space-y-4">
            <div class="text-red">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-16 w-16 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
            </div>
            <h2 class="text-base md:text-xl lg:text-3xl font-semibold">
                {{ (__('messages.reservation-pending-message')) }}
            </h2>
            <p class="text-xs md:text-base lg:text-xl text-gray-300 font-medium">
                {{ __('messages.reservation-confirmation-description') }}
            </p>
            <div class="flex justify-center pt-4">
                <a
                    href="{{ route('home') }}"
                    class="flex items-center gap-2 px-5 md:px-6 py-2 md:py-3 text-xs md:text-base font-medium text-white bg-red hover:bg-[#bd3a3a] rounded-xl transition-all duration-300 ease-in-out hover:shadow-2xl"
                >
                    <img src="{{ asset('icons/arrow-left.svg') }}" alt="Arrow Left" class="w-3 h-3 md:w-5 md:h-5">
                    {{ __('messages.back-to-home') }}
                </a>
            </div>
        </div>
    </div>
</x-app-layout>
