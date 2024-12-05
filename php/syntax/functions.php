<?php

function sayMe()
{
  echo "Meee";
}

sayMe();

// bool, int, float, string, array, object, callable

function calculateTax(int $price, int $tax, string $tax_name, callable $callback = null): string
{
  $taxValue = $price * $tax / 100;
  $totalPrice = $price + $taxValue;

  if ($callback) {
    $totalPrice = $callback($totalPrice);
  }

  return "The $tax_name for the price $price is $taxValue and the total price is $totalPrice";
}

echo "\n" . calculateTax('12', 5, 'PPh21');
echo "\n" . calculateTax(tax: 11, price: 10, tax_name: 'PPh21');

$callback = function ($totalPrice) {
  return $totalPrice * 2 + 100;
};

echo "\n" . calculateTax(10, 10, 'PPh21', $callback);
