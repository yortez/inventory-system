<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductResource\Pages;
use App\Filament\Resources\ProductResource\RelationManagers;
use App\Models\Product;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;

    protected static ?string $navigationIcon = 'heroicon-o-cube';
    protected static ?string $recordTitleAttribute = 'name';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make()
                    ->schema([
                        Select::make('category_id')
                            ->relationship('category', 'name')
                            ->required(),
                        Select::make('supplier_id')
                            ->relationship('supplier', 'name')
                            ->required(),
                        TextInput::make('name')->required(),
                        TextInput::make('sku')->required(),
                        TextInput::make('quantity')->numeric()->required(),
                        TextInput::make('purchase_price')->numeric()->required(),
                        TextInput::make('sale_price')->numeric()->required(),
                    ])
                    ->columns(2)

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->sortable()->searchable(),
                TextColumn::make('category.name')->label('Category'),
                TextColumn::make('supplier.name')->label('Supplier'),
                TextColumn::make('quantity')->sortable()->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('purchase_price')->label('Purchase Price')->money('PHP'),
                TextColumn::make('sale_price')->label('Sale Price')->money('PHP'),
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
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }
}
