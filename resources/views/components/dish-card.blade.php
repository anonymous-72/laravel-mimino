@props([
    'category_slug' => '',
    'dish_slug' => '',
    'image' => '',
    'weight' => '',
    'price' => 0,
    'is_new' => false,
    'name' => '',
    'description' => '',
    'unit' => ''
])
<div class="relative flex flex-col justify-between p-4 lg:p-6 bg-[#101010] border-2 border-red rounded-xl">
    @if ($is_new)
        <div class="absolute top-6 lg:top-8 right-6 lg:right-8 text-xs md:text-sm lg:text-base p-3 bg-custom-gradient-reverse rounded-full uppercase font-bold">
            {{ __('messages.new') }}
        </div>
    @endif
    <img
        src="{{ asset('dishes/' . $category_slug . '/' . $image) }}"
        alt="{{ $name }}"
        class="w-full rounded-lg"
    >
    @if (empty($description))
        <h2 class="text-lg md:text-xl lg:text-[26px] font-semibold my-3 md:my-6">{{ $name }}</h2>
    @else
        <button
            onclick="openModal('{{ $dish_slug }}')"
            class="text-left text-lg md:text-xl lg:text-[26px] font-semibold my-3 md:my-6 hover:text-red hover:transform hover:-translate-y-1 transition-transform duration-500"
        >
            {{ $name }}
        </button>
    @endif
    <div class="flex justify-between">
        <span class="text-gray-400">{{ $weight }}{{ $unit }}</span>
        <span class="font-medium text-2xl">{{ $price }} MDL</span>
    </div>
</div>

<div id="modal-{{ $dish_slug }}" class="fixed inset-0 z-50 bg-black bg-opacity-50 flex justify-center items-center opacity-0 pointer-events-none transition-opacity duration-500 ease-out" onclick="closeModal('{{ $dish_slug }}', event)">
    <div class="bg-black p-8 rounded-lg max-w-4xl w-full opacity-0 transform scale-95 transition-all duration-500 ease-out flex flex-col md:flex-row items-center md:items-start" onclick="event.stopPropagation()">
        <div class="w-full md:w-1/2 mb-6 md:mb-0">
            <img src="{{ asset('dishes/' . $category_slug . '/' . $image) }}" alt="{{ $name }}" class="w-full h-auto rounded-lg">
        </div>
        <div class="w-full md:w-1/2 pl-0 md:pl-8">
            <button onclick="closeModal('{{ $dish_slug }}')" class="absolute top-4 right-4 text-red-500 text-xl">×</button>
            <h2 class="text-xl md:text-2xl text-4xl font-bold mb-6">{{ $name }}</h2>
            <p class="text-sm md:text-base text-slate-300 mb-6">{{ $description }}</p>
            <div class="flex justify-between">
                <span class="text-gray-400">{{ $weight }}{{ $unit }}</span>
                <span class="font-medium text-2xl">{{ $price }} MDL</span>
            </div>
        </div>
    </div>
</div>

<script>
    function openModal(dishSlug) {
        const modal = document.getElementById('modal-' + dishSlug);
        const modalContent = modal.querySelector('div');

        modal.classList.remove('opacity-0', 'pointer-events-none');
        modal.classList.add('opacity-100', 'pointer-events-auto');

        modalContent.classList.remove('opacity-0', 'scale-95');
        modalContent.classList.add('opacity-100', 'scale-100');
    }

    function closeModal(dishSlug, event = null) {
        if (event && event.target !== event.currentTarget) {
            return;
        }

        const modal = document.getElementById('modal-' + dishSlug);
        const modalContent = modal.querySelector('div');

        modalContent.classList.remove('opacity-100', 'scale-100');
        modalContent.classList.add('opacity-0', 'scale-95');

        modal.classList.remove('opacity-100', 'pointer-events-auto');
        modal.classList.add('opacity-0', 'pointer-events-none');
    }
</script>
