<?php

use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert(['name'=>'COBOL']);
        DB::table('categories')->insert(['name'=>'Algol']);
        DB::table('categories')->insert(['name'=>'Fortran']);
        DB::table('categories')->insert(['name'=>'BASIC']);
        DB::table('categories')->insert(['name'=>'Go']);
        DB::table('categories')->insert(['name'=>'Ruby']);
    }
}
