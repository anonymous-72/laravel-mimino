<x-app-layout title="{{ __('messages.home') }}">
    <div class="relative mb-8">
        <img
            src="{{ asset('images/front.jpg') }}"
            alt="Mimino Front"
            class="w-full rounded-xl border-4 border-red"
        >
        <div class="absolute top-0 left-0 flex flex-col gap-3 md:gap-6 justify-center items-center bg-red bg-opacity-50 w-full h-full rounded-xl">
            <h1 class="text-center text-white px-4 max-w-4xl flex flex-col items-center gap-0 text-xs md:text-xl md:gap-3 lg:text-4xl font-semibold">
                <div>{{ __('messages.welcome') }}</div>
                <div class="text-4xl lg:text-7xl font-bold">Mimino</div>
                <div class="text-[10px] md:text-lg">{{ __('messages.welcome-description') }}</div>
            </h1>
            <div class="flex items-center gap-1 md:gap-2 text-xs md:text-xl font-medium text-white animate-bounce">
                <img src="{{ asset('icons/location.svg') }}" alt="Location" width="24">
                <p class="text-[10px] md:text-base">{{ __('messages.address') }}</p>
            </div>
        </div>
    </div>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-5">
        <x-home-card
            title="{{ __('messages.about') }}"
            description="{{ __('messages.about-subtitle') }}"
            link="about"
            icon="about"
        />
        <x-home-card
            title="{{ __('messages.menu') }}"
            description="{{ __('messages.menu-subtitle') }}"
            link="menu"
            icon="menu"
        />
        <x-home-card
            title="{{ __('messages.reservation') }}"
            description="{{ __('messages.reservation-subtitle') }}"
            link="reservation.create"
            icon="reservation"
        />
    </div>
</x-app-layout>
