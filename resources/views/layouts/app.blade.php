@props(['title' => ''])

<x-base-layout :$title>
    <x-layouts.header />
    <main class="px-6 md:px-12 lg:px-18 mt-24 md:mt-28 lg:mt-32">
        {{ $slot }}
    </main>
    <x-layouts.footer />
</x-base-layout>
