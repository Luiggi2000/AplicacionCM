<?php

namespace Database\Seeders;

use App\Models\SectionTwo;
use Illuminate\Database\Seeder;

class LandingSectionTwoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $input = [
            'text_main' => ' Proteja su salud',
            'text_secondary' => 'Nuestra clínica médica brinda atención de calidad para toda la familia mientras mantiene una atmósfera personal y los mejores servicios',
            'card_one_image' => ('/assets/landing-theme/images/banner/appointment_schedule.png'),
            'card_one_text' => 'Programar cita',
            'card_one_text_secondary' => 'Facilita a los pacientes reservar citas en línea desde cualquier lugar y en cualquier momento.',
            'card_two_image' => ('/assets/landing-theme/images/banner/ipd_manage.png'),
            'card_two_text' => 'Gestión de OPD',
            'card_two_text_secondary' => 'Gestione fácilmente las citas con un clic para acceder a los registros médicos del paciente y ahorrar tiempo.',
            'card_third_image' => ('/assets/landing-theme/images/banner/opd_manage.png'),
            'card_third_text' => 'Gestión de IPD',
            'card_third_text_secondary' => 'Este módulo del sistema de gestión hospitalaria está diseñado para gestionar todo el departamento de pacientes hospitalizados.',
        ];

        SectionTwo::create($input);
    }
}
