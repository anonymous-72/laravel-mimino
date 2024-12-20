import defaultTheme from 'tailwindcss/defaultTheme';

/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/**/*.blade.php',
        './resources/**/*.js',
        './resources/**/*.vue',
    ],
    theme: {
        extend: {
            fontFamily: {
                sans: ['Figtree', ...defaultTheme.fontFamily.sans],
            },
            colors: {
                'red': '#ff4c4c',
            },
            backgroundImage: {
                'custom-gradient': 'linear-gradient(150deg, rgba(255,76,76,1) 0%, rgba(254,125,125,1) 50%, rgba(255,175,175,1) 100%)',
                'custom-gradient-reverse': 'linear-gradient(150deg, rgba(255,175,175,1) 0%, rgba(254,125,125,1) 50%, rgba(255,76,76,1) 100%)',
            },
        },
    },
    plugins: [
        require('tailwind-scrollbar-hide'),
    ],
};
