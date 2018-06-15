<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {   

        factory(App\User::class,24)->create();
        App\User::create([
            'name' => 'Ari Rodriguez',
            'email' => 'arirdzcruz@gmail.com',
            'password' => bcrypt('12345'),
            
        

        ]);
        $this->call(NoticesTableSeeder::class);
    }
}
