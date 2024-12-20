@props(['title' => ''])

<x-base-layout :$title>
    <x-layouts.header />
    <main class="px-6 md:px-12 lg:px-18 mt-20 md:mt-24 lg:mt-28">
        {{ $slot }}
    </main>
</x-base-layout>
