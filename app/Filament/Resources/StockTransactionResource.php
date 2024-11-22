<?php

namespace App\Filament\Resources;

use App\Filament\Resources\StockTransactionResource\Pages;
use App\Filament\Resources\StockTransactionResource\RelationManagers;
use App\Models\StockTransaction;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class StockTransactionResource extends Resource
{
    protected static ?string $model = StockTransaction::class;

    protected static ?string $navigationIcon = 'heroicon-o-arrow-trending-up';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make()
                    ->schema([
                        Select::make('product_id')
                            ->relationship('product', 'name')
                            ->required(),
                        Select::make('type')
                            ->options([
                                'stock_in' => 'Stock In',
                                'stock_out' => 'Stock Out',
                            ])->required(),
                        TextInput::make('quantity')->numeric()->required(),
                        TextInput::make('price')->numeric()->required(),
                    ])
                    ->columns(2)

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('product.name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('type')
                    ->searchable(),
                Tables\Columns\TextColumn::make('quantity')
                    ->searchable(),
                Tables\Columns\TextColumn::make('price')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListStockTransactions::route('/'),
            'create' => Pages\CreateStockTransaction::route('/create'),
            'edit' => Pages\EditStockTransaction::route('/{record}/edit'),
        ];
    }
}
