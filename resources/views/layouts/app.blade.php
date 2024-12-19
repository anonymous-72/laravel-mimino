@props(['title' => ''])

<x-base-layout :$title>
    <x-layouts.header />
    <main class="px-6 md:px-12 lg:px-18 mt-28">
        {{ $slot }}
    </main>
</x-base-layout>
