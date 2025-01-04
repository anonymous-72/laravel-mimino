<x-app-layout title="{{ __('messages.reservation') }}">
    <x-page-title
        title="{{ __('messages.reservation') }}"
        subtitle="{{ __('messages.reservation-subtitle') }}"
    />
    <form action="{{ route('reservation.store') }}" method="POST" class="max-w-2xl mx-auto p-6 space-y-4 md:space-y-10 rounded-xl shadow-lg">
        @csrf
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="space-y-2">
                <label for="name" class="block text-sm md:text-base lg:text-lg font-medium">
                    {{ __('messages.your-name') }}
                </label>
                <input
                    type="text"
                    id="name"
                    name="name"
                    class="bg-[#101010] w-full px-4 py-2 text-sm md:text-base rounded-xl border border-gray-300 focus:border-red focus:ring-red focus:ring-2 focus:outline-none transition-all duration-300 ease-in-out"
                    placeholder="{{ __('messages.your-name-placeholder') }}"
                >
                @error('name')
                <div class="text-red text-sm flex items-center gap-3">
                    <img src="{{ asset('icons/info.svg') }}" alt="Error" class="w-4 h-4">
                    {{ $message }}
                </div>
                @enderror
            </div>
            <div class="space-y-2">
                <label for="email" class="block text-sm md:text-base lg:text-lg font-medium">
                    {{ __('messages.email') }}
                </label>
                <input
                    type="email"
                    id="email"
                    name="email"
                    class="bg-[#101010] w-full px-4 py-2 text-sm md:text-base rounded-xl border border-gray-300 focus:border-red focus:ring-red focus:ring-2 focus:outline-none transition-all duration-300 ease-in-out"
                    placeholder="john.doe@gmail.com"
                >
                @error('email')
                <div class="text-red text-sm flex items-center gap-3">
                    <img src="{{ asset('icons/info.svg') }}" alt="Error" class="w-4 h-4">
                    {{ $message }}
                </div>
                @enderror
            </div>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="space-y-2">
                <label for="phone_number" class="block text-sm md:text-base lg:text-lg font-medium">
                    {{ __('messages.phone-number') }}
                </label>
                <input
                    type="text"
                    id="phone_number"
                    name="phone_number"
                    class="bg-[#101010] w-full px-4 py-2 text-sm md:text-base rounded-xl border border-gray-300 focus:border-red focus:ring-red focus:ring-2 focus:outline-none transition-all duration-300 ease-in-out"
                    placeholder="{{ __('messages.phone-number-placeholder') }}"
                >
                @error('phone_number')
                <div class="text-red text-sm flex items-center gap-3">
                    <img src="{{ asset('icons/info.svg') }}" alt="Error" class="w-4 h-4">
                    {{ $message }}
                </div>
                @enderror
            </div>
            <div class="space-y-2">
                <label for="reservation_date" class="block text-sm md:text-base lg:text-lg font-medium">
                    {{ __('messages.date-and-time-of-reservation') }}
                </label>
                <input
                    type="datetime-local"
                    id="reservation_date"
                    name="reservation_date"
                    class="bg-[#101010] w-full px-4 py-2 text-sm md:text-base rounded-xl border border-gray-300 focus:border-red focus:ring-red focus:ring-2 focus:outline-none transition-all duration-300 ease-in-out"
                >
                @error('reservation_date')
                <div class="text-red text-sm flex items-center gap-3">
                    <img src="{{ asset('icons/info.svg') }}" alt="Error" class="w-4 h-4">
                    {{ $message }}
                </div>
                @enderror
            </div>
        </div>
        <div class="space-y-2">
            <label for="comment" class="block text-sm md:text-base lg:text-lg font-medium">
                {{ __('messages.reservation-comment') }}
            </label>
            <textarea
                id="comment"
                name="comment"
                class="bg-[#101010] h-32 w-full px-4 py-2 text-sm md:text-base rounded-xl border border-gray-300 focus:border-red focus:ring-red focus:ring-2 focus:outline-none transition-all duration-300 ease-in-out"
                placeholder="{{ __('messages.reservation-comment-placeholder') }}"
            ></textarea>
            @error('comment')
            <div class="text-red text-sm flex items-center gap-3">
                <img src="{{ asset('icons/info.svg') }}" alt="Error" class="w-4 h-4">
                {{ $message }}
            </div>
            @enderror
        </div>
        <button
            type="submit"
            class="w-full px-6 py-3 text-sm md:text-base font-medium text-white bg-red hover:bg-[#bd3a3a] rounded-xl transition-all duration-300 ease-in-out hover:shadow-2xl"
        >
            {{ __('messages.make-reservation') }}
        </button>
    </form>
</x-app-layout>
