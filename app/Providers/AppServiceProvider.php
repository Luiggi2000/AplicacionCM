<?php

namespace App\Providers;

use App\Models\Module;
use App\Models\Setting;
use App\Observers\ModuleObserver;
use App\Observers\SettingObserver;
use App\Rules\UniqueRecordRule;
use App\Rules\ValidRecaptcha;
use Illuminate\Support\Facades\Blade;
use Illuminate\Contracts\Routing\UrlGenerator;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\ServiceProvider;
use Laravel\Cashier\Cashier;
use Mariuzzo\LaravelJsLocalization\Commands\LangJsCommand;
use Mariuzzo\LaravelJsLocalization\Generators\LangJsGenerator;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        // Evita que Laravel Cashier ejecute sus migraciones por defecto
        Cashier::ignoreMigrations();
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Usar paginación con estilos de Bootstrap
        Paginator::useBootstrap();

        // Registrar observadores
        Module::observe(ModuleObserver::class);
        Setting::observe(SettingObserver::class);

        // Validación personalizada para reCAPTCHA
        Validator::extend('recaptcha', ValidRecaptcha::class);

        // Longitud por defecto para strings en migraciones (MySQL < 5.7.7 / MariaDB < 10.2.2)
        Schema::defaultStringLength(191);

        // Directiva Blade para verificar módulos activos
        Blade::if('module', function (string $name, $module = null) {
            if ($module instanceof \Illuminate\Support\Collection) {
                $foundModule = $module->firstWhere('name', $name);
            } elseif ($module instanceof \App\Models\Module) {
                $foundModule = $module->where('name', $name)->first();
            } else {
                $foundModule = null;
            }
            return $foundModule ? (bool) $foundModule->is_active : false;
        });


        // Validación personalizada para valores únicos con posible excepción de un ID
        Validator::extend('is_unique', function ($attribute, $value, $parameters) {
            [$table, $column] = $parameters;
            $updateFieldValue = $parameters[2] ?? null;

            return (new UniqueRecordRule($table, $column, $updateFieldValue))
                ->passes($attribute, $value);
        });

        // Registrar comando para Laravel JS Localization
        $this->app->singleton('localization.js', function ($app) {
            $laravelMajorVersion = (int) $app::VERSION;
            $files = $app['files'];

            if ($laravelMajorVersion === 4) {
                $langs = base_path('app/lang');
            } elseif ($laravelMajorVersion >= 5 && $laravelMajorVersion < 9) {
                $langs = resource_path('lang');
            } else {
                $langs = app()->langPath();
            }

            $messages = $app['config']->get('localization-js.messages');
            $generator = new LangJsGenerator($files, $langs, $messages);

            return new LangJsCommand($generator);
        });
    }
}
