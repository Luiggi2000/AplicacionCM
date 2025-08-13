<?php

namespace Database\Seeders;

use App\Models\SectionThree;
use Illuminate\Database\Seeder;

class LandingSectionThreeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $input = [
            'text_main' => '¿Por qué Hospital SAAS?',
            'text_secondary' => 'Hemos implementado Hospital SAAS para el registro de nuestros pacientes, la programación de citas, la gestión de pacientes, etc.',
            'img_url' => ('/assets/landing-theme/images/banner/section_three_sass.png'),
            'text_one' => 'Totalmente Seguro',
            'text_two' => 'Fácil de Usar',
            'text_three' => 'Actualizaciones Regulares',
            'text_four' => 'Soporte 24*7',
        ];

        SectionThree::create($input);
    }
}
