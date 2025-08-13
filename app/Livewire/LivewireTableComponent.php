<?php

namespace App\Livewire;

use Livewire\Attributes\Lazy;
use Rappasoft\LaravelLivewireTables\DataTableComponent;
use Rappasoft\LaravelLivewireTables\Exceptions\DataTableConfigurationException;

#[Lazy]
class LivewireTableComponent extends DataTableComponent
{
    protected bool $columnSelectStatus = false;

    public $showFilterOnHeader = false;

    public $paginationIsEnabled = false;

    public bool $paginationStatus = true;

    public bool $sortingPillsStatus = false;

    protected $listeners = ['refresh' => '$refresh'];

    public string $emptyMessage = 'messages.common.no_data_available';

    public $showButtonOnHeader = false;

    public $buttonComponent = '';

    public function configure(): void
    {
        // configuración común aquí
    }

    public function columns(): array
    {
        return [];
    }

    public function render(): \Illuminate\View\View
    {
        return view('vendor.livewire-tables.datatable', [
            'rows' => $this->getRows(),
            'filterGenericData' => $this->filterGenericData ?? [],
            'customView' => $this->customView ?? null,
        ]);
    }
}
