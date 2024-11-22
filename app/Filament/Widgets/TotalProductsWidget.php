<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Card;
use App\Models\Product;
use App\Models\Supplier;
use Filament\Widgets\StatsOverviewWidget\Stat;

class TotalProductsWidget extends BaseWidget
{
    protected int | string | array $columnSpan = 'full';
    protected static ?int $sort = 0;
    protected function getCards(): array
    {
        $lowStockCount = Product::where('quantity', '<', 10)->count();
        return [
            Stat::make('Total Products', Product::count())
                ->description('Total number of products in inventory')
                ->icon('heroicon-o-cube')
                ->color('primary'),
            Stat::make('Low Stock Alerts', $lowStockCount)
                ->description('Products with less than 10 units in stock')
                ->icon('heroicon-o-exclamation-circle')
                ->color($lowStockCount > 0 ? 'danger' : 'success'),
            Stat::make('Suppliers', Supplier::count())
                ->description('Total number of Suppliers')
                ->icon('heroicon-o-building-storefront')

        ];
    }
}

