<x-app-layout title="{{ __('messages.about') }}">
    <x-page-title
        title="{{ __('messages.about') }}"
        subtitle="{{ __('messages.about-subtitle') }}"
    />
    <div class="mt-10 flex flex-col gap-3">
        <p class="font-medium text-sm md:text-base lg:text-lg">{!! __('messages.about-text-first') !!}</p>
        <p class="font-medium text-sm md:text-base lg:text-lg">{!! __('messages.about-text-second') !!}</p>
        <p class="font-medium text-sm md:text-base lg:text-lg">{!! __('messages.about-text-third') !!}</p>
        <p class="font-semibold text-base md:text-lg lg:text-xl text-red">{{ __('messages.about-welcome') }}</p>
    </div>
    <div class="relative bg-black text-white">
        <div class="overflow-hidden relative mt-10 mx-auto">
            <div id="carousel" class="flex transition-transform duration-500">
                <div class="flex-shrink-0 w-full">
                    <img src="{{ asset('images/mimino-1.jpg') }}" alt="Mimino" class="rounded-xl shadow-lg w-full">
                </div>
                <div class="flex-shrink-0 w-full">
                    <img src="{{ asset('images/mimino-2.jpg') }}" alt="Mimino" class="rounded-xl shadow-lg w-full">
                </div>
                <div class="flex-shrink-0 w-full">
                    <img src="{{ asset('images/mimino-3.jpg') }}" alt="Mimino" class="rounded-xl shadow-lg w-full">
                </div>
                <div class="flex-shrink-0 w-full">
                    <img src="{{ asset('images/mimino-4.jpg') }}" alt="Mimino" class="rounded-xl shadow-lg w-full">
                </div>
                <div class="flex-shrink-0 w-full">
                    <img src="{{ asset('images/mimino-5.jpg') }}" alt="Mimino" class="rounded-xl shadow-lg w-full">
                </div>
                <div class="flex-shrink-0 w-full">
                    <img src="{{ asset('images/mimino-6.jpg') }}" alt="Mimino" class="rounded-xl shadow-lg w-full">
                </div>
                <div class="flex-shrink-0 w-full">
                    <img src="{{ asset('images/mimino-7.jpg') }}" alt="Mimino" class="rounded-xl shadow-lg w-full">
                </div>
            </div>
            <button id="prev" class="absolute top-1/2 left-0 transform -translate-y-1/2 bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-full shadow-lg">
                &#8249;
            </button>
            <button id="next" class="absolute top-1/2 right-0 transform -translate-y-1/2 bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-full shadow-lg">
                &#8250;
            </button>
        </div>
    </div>
</x-app-layout>

<script>
    const carousel = document.getElementById("carousel");
    const next = document.getElementById("next");
    const prev = document.getElementById("prev");

    let index = 0;
    const slides = document.querySelectorAll("#carousel > div");
    const totalSlides = slides.length;

    next.addEventListener("click", () => {
        if (index < totalSlides - 1) {
            index++;
        } else {
            index = 0;
        }
        updateCarousel();
    });

    prev.addEventListener("click", () => {
        if (index > 0) {
            index--;
        } else {
            index = totalSlides - 1;
        }
        updateCarousel();
    });

    function updateCarousel() {
        carousel.style.transform = `translateX(-${index * 100}%)`;
    }
</script>
