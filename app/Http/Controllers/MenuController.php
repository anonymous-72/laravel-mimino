<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function index()
    {
        $categories = Category::with(['categoryTranslations' => function ($query) {
            $query->where('locale', app()->getLocale());
        }])->get();
        return view('menu.index', ['categories' => $categories]);
    }
}
