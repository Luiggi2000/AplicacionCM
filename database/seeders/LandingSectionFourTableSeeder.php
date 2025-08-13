<?php

namespace Database\Seeders;

use App\Models\SectionFour;
use Illuminate\Database\Seeder;

class LandingSectionFourTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $input = [
            'text_main' => 'Haga crecer su hospital',
            'text_secondary' => 'Ayudamos a hacer crecer su hospital más allá de sus expectativas',
            'img_url_one' => ('/assets/landing-theme/images/banner/bulit_seo.png'),
            'img_url_two' => ('/assets/landing-theme/images/banner/hospital_profile.png'),
            'img_url_three' => ('/assets/landing-theme/images/banner/online_appointment.png'),
            'img_url_four' => ('/assets/landing-theme/images/banner/articles.png'),
            'img_url_five' => ('/assets/landing-theme/images/banner/easy_to_use.png'),
            'img_url_six' => ('/assets/landing-theme/images/banner/support.jpeg'),
            'card_text_one' => 'SEO construido',
            'card_text_two' => 'Perfil del Hospital',
            'card_text_three' => 'Cita en Línea',
            'card_text_four' => 'Artículos',
            'card_text_five' => 'Fácil de Usar',
            'card_text_six' => 'Soporte 24*7',
            'card_text_one_secondary' => 'El SEO genera mayores tasas de retención de pacientes, lo que se traduce en una mayor tasa de conversión.',
            'card_text_two_secondary' => 'Más del 80% de las personas que buscan profesionales médicos hacen su selección en HMS.',
            'card_text_three_secondary' => 'Brinde comodidad a sus pacientes en esta situación pandémica para reservar citas en línea.',
            'card_text_four_secondary' => 'Manténgase actualizado con las últimas técnicas/conocimientos/investigaciones para construir una red profesional.',
            'card_text_five_secondary' => 'Software de alta calidad con todas las funciones fácil de usar y fácilmente accesible.',
            'card_text_six_secondary' => 'En cualquier momento estamos aquí para ayudarlo.',
        ];

        SectionFour::create($input);
    }
}
