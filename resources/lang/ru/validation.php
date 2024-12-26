<?php

return [
    'custom' => [
        'name' => [
            'required' => 'Введите ваше имя.',
            'max' => 'Имя не должно быть длиннее :max символов.',
        ],
        'email' => [
            'required' => 'Введите ваш email.',
            'email' => 'Введите корректный email.',
        ],
        'phone_number' => [
            'required' => 'Введите ваш номер телефона.',
            'regex' => 'Введите корректный номер телефона.',
        ],
        'reservation_date' => [
            'required' => 'Выберите дату и время бронирования.',
            'after' => 'Дата бронирования должна быть в будущем.',
        ],
    ],

    'attributes' => [
        'name',
        'email',
        'phone_number',
        'reservation_date'
    ],
];
