<?php

return [
    'custom' => [
        'table_id' => [
            'required' => 'Selectați o masă pentru a face o rezervare.'
        ],
        'name' => [
            'required' => 'Introduceți numele dvs.',
            'max' => 'Numele nu trebuie să fie mai lung de :max caractere.',
        ],
        'email' => [
            'required' => 'Introduceți adresa dvs. de e-mail.',
            'email' => 'Introduceți un email valid',
        ],
        'phone_number' => [
            'required' => 'Introduceți numărul dvs. de telefon.',
            'regex' => 'Introduceți un număr de telefon valid.',
        ],
        'reservation_date' => [
            'required' => 'Selectați data și ora rezervării.',
            'after' => 'Data rezervării trebuie să fie în viitor.',
        ],
    ],

    'attributes' => [
        'table_id',
        'name',
        'email',
        'phone_number',
        'reservation_date'
    ],
];
