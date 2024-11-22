<?php

namespace App\Filament\Widgets;

use Filament\Widgets\TableWidget as BaseWidget;
use Filament\Tables;
use App\Models\StockTransaction;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Eloquent\Builder;


class RecentTransactionsWidget extends BaseWidget
{
    protected static ?int $sort = 2;
    protected static bool $isLazy = false;
    protected int | string | array $columnSpan = 'full';

protected function getTableQuery(): Builder|Relation|null
{
    return StockTransaction::query()->latest();
}


    protected function getTableColumns(): array
    {
        return [
            Tables\Columns\TextColumn::make('product.name')
                ->label('Product')
                ->searchable(),
                Tables\Columns\TextColumn::make('type')
                ->label('Transaction Type')
                ->formatStateUsing(fn ($state) => $state === 'stock_in' ? 'Stock In' : 'Stock Out')
                ->color(fn ($state) => $state === 'stock_in' ? 'success' : 'danger'),
            Tables\Columns\TextColumn::make('quantity')
                ->label('Quantity')
                ->sortable(),
            Tables\Columns\TextColumn::make('created_at')
                ->label('Date')
                ->date(),
        ];
    }
}

