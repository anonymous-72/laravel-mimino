@props(['locale' => '', 'title' => '', 'flag_path' => '', 'alt' => '', 'lang' => ''])

<a
    href="{{ route('change-language', ['lang' => $locale]) }}"
    title="{{ $title }}"
    class="flex items-center gap-1 font-semibold link {{ app()->getLocale() == $locale ? 'link-active' : '' }}"
>
    {{ $lang }} <img src="{{ asset($flag_path) }}" alt="{{ $alt }}">
</a>
