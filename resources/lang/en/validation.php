<?php

return [
    'custom' => [
        'name' => [
            'required' => 'Enter your name.',
            'max' => 'The name must not be longer than :max characters.',
        ],
        'email' => [
            'required' => 'Enter your email.',
            'email' => 'Enter a valid email.',
        ],
        'phone_number' => [
            'required' => 'Enter your phone number.',
            'regex' => 'Enter a valid phone number.',
        ],
        'reservation_date' => [
            'required' => 'Select the date and time of your reservation.',
            'after' => 'The reservation date must be in the future.',
        ],
    ],

    'attributes' => [
        'name',
        'email',
        'phone_number',
        'reservation_date'
    ],
];
