<?php

namespace Database\Seeders;

use App\Models\SectionOne;
use Illuminate\Database\Seeder;

class LandingSectionOneTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $input = [
            'text_main' => 'Centros Medicos',
            'text_secondary' => 'Una evolución de siguiente nivel en TI de atención médica, EMR basado en la web, diseñada para aprovechar las oportunidades.',
            'img_url' => ('/assets/landing-theme/images/banner/section.png'),
        ];

        SectionOne::create($input);
    }
}
