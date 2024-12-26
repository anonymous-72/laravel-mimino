<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('messages.reservation-confirmation') }}</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #101010;
            color: white;
            line-height: 1.5;
            padding: 20px;
        }

        .container {
            max-width: 672px;
            margin: 0 auto;
            padding: 24px;
        }

        .card {
            background-color: #101010;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 24px;
            margin-bottom: 40px;
        }

        .header {
            text-align: center;
            margin-bottom: 24px;
        }

        .header h1 {
            font-size: 20px;
            font-weight: 500;
            color: white;
        }

        .grid {
            margin: 24px 0;
        }

        @media (min-width: 768px) {
            .grid {
                display: table;
                width: 100%;
            }

            .grid-item {
                display: table-cell;
                width: 50%;
                padding: 0 12px;
            }
        }

        .form-group {
            margin-bottom: 24px;
        }

        .label {
            display: block;
            font-size: 16px;
            font-weight: 500;
            margin-bottom: 8px;
        }

        .input-display {
            background-color: #101010;
            border: 1px solid #4a4a4a;
            border-radius: 12px;
            padding: 8px 16px;
            width: 100%;
            font-size: 14px;
            color: white;
            margin-bottom: 16px;
        }

        .comment-box {
            min-height: 128px;
        }

        .button {
            display: inline-block;
            width: 100%;
            padding: 12px 24px;
            background-color: #ff4c4c;
            color: white;
            text-decoration: none;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 24px;
        }

        .button:hover {
            background-color: #bd3a3a;
        }

        .footer {
            text-align: center;
            color: #9ca3af;
            font-size: 14px;
        }

        p {
            margin-bottom: 16px;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="header">
            <h1>{{ __('messages.reservation-confirmation') }}</h1>
        </div>
        <p>{{ __('messages.dear') }} {{ $reservation->name }},</p>
        <p>{{ __('messages.reservation-confirmation-thank-you') }}</p>
        <div class="grid">
            <div class="grid-item">
                <div class="form-group">
                    <label class="label">{{ __('messages.your-name') }}</label>
                    <div class="input-display">{{ $reservation->name }}</div>
                </div>
            </div>
            <div class="grid-item">
                <div class="form-group">
                    <label class="label">{{ __('messages.email') }}</label>
                    <div class="input-display">{{ $reservation->email }}</div>
                </div>
            </div>
        </div>
        <div class="grid">
            <div class="grid-item">
                <div class="form-group">
                    <label class="label">{{ __('messages.phone-number') }}</label>
                    <div class="input-display">{{ $reservation->phone_number }}</div>
                </div>
            </div>
            <div class="grid-item">
                <div class="form-group">
                    <label class="label">{{ __('messages.date-and-time-of-reservation') }}</label>
                    <div class="input-display">
                        {{ \Carbon\Carbon::parse($reservation->reservation_date)->format('d.m.Y H:i') }}
                    </div>
                </div>
            </div>
        </div>
        @if($reservation->comment)
            <div class="form-group">
                <label class="label">{{ __('messages.reservation-comment') }}</label>
                <div class="input-display comment-box">{{ $reservation->comment }}</div>
            </div>
        @endif
        <p>{{ __('messages.reservation-confirmation-contact') }}</p>

        <a href="{{ route('home') }}" class="button">
            {{ __('messages.visit-our-website') }}
        </a>
    </div>
    <div class="footer">
        <p>© {{ date('Y') }} {{ config('app.name') }}. {{ __('messages.all-rights-reserved') }}</p>
    </div>
</div>
</body>
</html>
