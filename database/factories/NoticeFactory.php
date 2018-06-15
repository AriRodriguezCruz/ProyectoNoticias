<?php

use Faker\Generator as Faker;

$factory->define(App\Notice::class, function (Faker $faker) {
    $title = $faker ->sentence(4);
    return [
        'user_id' => rand(1,25),
        'title'=> $title,
        'slug' => str_slug($title),
        'body' => $faker->text(200),
        'image' => $faker->imageUrl($width = 1200, $height = 400),
        'status' => $faker->randomElement(['DRAFT','PUBLISHED']),

    ];
});
