<!--begin::Authentication - Sign-in -->
@php
    $style = 'style=background-image:url(' . asset('assets/img/progress-hd.png') . ')';
    $settingValue = getSuperAdminSettingValue();
    App::setLocale(checkLanguageSession());
@endphp
@extends('layouts.auth_app')

@section('title')
    {{ __('auth.login.login') }}
@endsection

@section('content')

<style>
    /* Card centrada tipo mockup #2 */
    .auth-wrap{
        min-height: calc(100vh - 120px);
        display:flex;align-items:center;justify-content:center;
        background:#f7f9fc;padding:24px;
    }
    .auth-card{
        width:100%;max-width:560px;background:#fff;border-radius:18px;
        box-shadow:0 20px 60px rgba(20,36,80,.08);
        padding:36px 28px;
    }
    .auth-logo{width:54px;height:54px;object-fit:contain;margin-bottom:8px;}
    .auth-title{font-weight:800;font-size:28px;margin:4px 0 6px;}
    .auth-sub{color:#6b7280;margin-bottom:18px;}
    .input-eye{
        position:absolute;right:10px;top:50%;transform:translateY(-50%);
        border:0;background:transparent;padding:6px;cursor:pointer;color:#6b7280;
    }
    .width-540{max-width:560px;}
    .rounded-15{border-radius:18px;}

    /* GRID de "cards" por rol */
    .role-grid{display:grid;grid-template-columns:repeat(2,1fr);gap:12px;margin:12px 0 22px;}
    .role-chip{
        border:0;border-radius:12px;padding:12px 10px;font-weight:800;
        color:#fff;text-align:center;transition:.15s transform;white-space:nowrap;
    }
    .role-chip:hover{transform:translateY(-1px);filter:brightness(.96);}
    .c-violet{background:#7c3aed;}     /* Super Admin   */
    .c-indigo{background:#6366f1;}     /* Hospital Admin*/
    .c-red{background:#ef4444;}        /* Doctor        */
    .c-slate{background:#475569;}      /* Accountant    */
    .c-green{background:#22c55e;}      /* Case Handler  */
    .c-emerald{background:#10b981;}    /* Receptionist  */
    .c-blue{background:#2563eb;}       /* Pharmacist    */
    .c-purple{background:#8b5cf6;}     /* Patient       */
    .c-gray{background:#334155;}       /* Nurse         */
    .c-rose{background:#f43f5e;}       /* Lab Technician*/
    @media (min-width:768px){ .role-grid{grid-template-columns:repeat(3,1fr);} }
</style>

{{-- Selector de idioma (se conserva) --}}
<ul class="nav nav-pills language-option" style="justify-content: flex-end; cursor: pointer">
    <li class="nav-item dropdown m-5">
        <a class="btn btn-primary w-150px mb-5 indicator m-3 dropdown-toggle" data-bs-toggle="dropdown"
           href="javascript:void(0)" role="button" aria-expanded="false">{{ getCurrentLanguageName() }}</a>
        <ul class="dropdown-menu w-150px">
            @foreach (getLanguages() as $key => $value)
                <li class="{{ checkLanguageSession() == $key ? 'active' : '' }}"><a
                        class="dropdown-item  px-5 language-select {{ checkLanguageSession() == $key ? 'bg-primary text-white' : 'text-dark' }}"
                        data-id="{{ $key }}">{{ $value }}</a>
                </li>
            @endforeach
        </ul>
    </li>
</ul>

<div class="d-flex flex-column flex-column-fluid align-items-center justify-content-center p-4 auth-wrap">
    <div class="col-12 text-center">
        <a href="{{ route('landing-home') }}" class="image mb-7 mb-sm-10">
            <img alt="Logo" src="{{ asset($settingValue['app_logo']['value']) }}" class="img-fluid logo-fix-size auth-logo">
        </a>
    </div>

    <div class="bg-theme-white rounded-15 shadow-md width-540 px-5 px-sm-7 py-10 mx-auto auth-card">
        @include('flash::message')
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul class="mb-0">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <h1 class="text-center mb-2 auth-title">{{ __('auth.sign_in') }}</h1>
        <p class="text-center auth-sub">
            {{ __("messages.new_change.not_have_account") }}?
            <a href="{{ route('register') }}">{{ __('messages.web_home.sign_up') }}</a>
        </p>

        <form method="post" action="{{ url('/login') }}">
            @csrf
            <input type="hidden" name="route_name"
                   value="{{ app('router')->getRoutes()->match(app('request')->create(url()->previous()))->getName() }}">

            {{-- Email --}}
            <div class="mb-sm-7 mb-4">
                <label for="formInputEmail" class="form-label">
                    {{ __('auth.email') }} <span class="required"></span>
                </label>
                <input type="email" class="form-control" name="email" id="formInputEmail"
                       value="{{ Cookie::get('email') !== null ? Cookie::get('email') : old('email') }}"
                       required placeholder="{{ __('auth.login.enter_email') }}" autocomplete="username">
            </div>

            {{-- Password + "Forgot password?" + ojito --}}
            <div class="mb-sm-7 mb-4">
                <div class="d-flex justify-content-between">
                    <label for="formInputPassword" class="form-label">{{ __('auth.password') }}:
                        <span class="required"></span>
                    </label>
                    <a href="{{ url('/password/reset') }}" class="link-info fs-6 text-decoration-none">
                        {{ __('auth.login.forgot_password') }} ?
                    </a>
                    <input type="hidden"
                           value="{{ session('languageName') == null ? session('languageName') : checkLanguageSession() }}"
                           name="se_lang">
                </div>

                <div class="position-relative">
                    <input type="password" class="form-control" name="password" id="formInputPassword"
                           placeholder="{{ __('auth.login.enter_password') }}"
                           value="{{ Cookie::get('password') !== null ? Cookie::get('password') : null }}"
                           required autocomplete="current-password">
                    <button type="button" class="input-eye" id="togglePass" aria-label="show/hide">
                        <i class="fa fa-eye"></i>
                    </button>
                </div>
            </div>

            {{-- Remember me --}}
            <div class="mb-sm-7 mb-4 form-check">
                <input type="checkbox" class="form-check-input" id="formCheck" name="remember"
                       {{ old('remember', true) ? 'checked' : '' }}>
                <label class="form-check-label" for="formCheck">{{ __('auth.remember_me') }}</label>
            </div>

            {{-- ====== CARDS DE COLORES (roles) ====== --}}
            <div class="role-grid">
                <button type="button" class="role-chip c-violet"
                        data-email="admin@example.com">Super Admin</button>
                <button type="button" class="role-chip c-indigo"
                        data-email="hospital.admin@example.com">Hospital Admin</button>
                <button type="button" class="role-chip c-red"
                        data-email="doctor@example.com">Doctor</button>
                <button type="button" class="role-chip c-slate"
                        data-email="accountant@example.com">Contador</button>
                <button type="button" class="role-chip c-green"
                        data-email="case.handler@example.com">Manejador de casos</button>
                <button type="button" class="role-chip c-emerald"
                        data-email="receptionist@example.com">Recepcionista</button>
                <button type="button" class="role-chip c-blue"
                        data-email="pharmacist@example.com">Farmacéutico</button>
                <button type="button" class="role-chip c-purple"
                        data-email="patient@example.com">Paciente</button>
                <button type="button" class="role-chip c-gray"
                        data-email="nurse@example.com">Enfermera</button>
                <button type="button" class="role-chip c-rose"
                        data-email="lab.tech@example.com">Técnico de Laboratorio</button>
            </div>
            {{-- ====== /CARDS ====== --}}

            <div class="d-grid" data-turbo="false">
                <button type="submit" class="btn btn-primary w-100">{{ __('auth.login.login') }}</button>
            </div>
        </form>
    </div>
</div>

<script>
    // Mostrar/ocultar contraseña
    (function () {
        const toggle = document.getElementById('togglePass');
        const input  = document.getElementById('formInputPassword');
        if (toggle && input) {
            toggle.addEventListener('click', function () {
                const isPwd = input.type === 'password';
                input.type = isPwd ? 'text' : 'password';
                const icon = this.querySelector('i');
                if (icon) { icon.classList.toggle('fa-eye'); icon.classList.toggle('fa-eye-slash'); }
            });
        }
    })();

    // Autocompletar con los botones de rol
    document.querySelectorAll('.role-chip').forEach(btn => {
        btn.addEventListener('click', () => {
            const email = btn.getAttribute('data-email') || '';
            const pass  = btn.getAttribute('data-pass') || '';
            document.getElementById('formInputEmail').value    = email;
            document.getElementById('formInputPassword').value = pass;
        });
    });
</script>
<!--end::Authentication - Sign-in -->
@endsection
