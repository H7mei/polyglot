<?php

class Converter {}

interface CanConvert
{
  public function convert(float $value);
}

class CryptoConverter extends Converter
{
  // properties
  private string $currencyCode;

  // constructor
  public function __construct(string $currencyCode)
  {
    $this->currencyCode = $currencyCode;
  }

  // methods
  public function convert(float $value): array
  {
    $code = $this->currencyCode;
    $api = "https://api.coingecko.com/api/v3/simple/price?ids=$code&vs_currencies=idr";

    $json = file_get_contents($api);

    if ($json === false) {
      return "Error fetching data";
    }

    $data = json_decode($json, true);

    if ($data === null || !isset($data[$code]['idr'])) {
      return "Error decoding data or invalid currency code";
    }

    $price = $data[$code]['idr'];
    return [
      'one' => $price,
      'price' => $value * $price,
      'terbilang' => $this->terbilang($value * $price),
    ];
  }

  private function terbilang($number): string
  {
    $words = [
      0 => 'nol',
      1 => 'satu',
      2 => 'dua',
      3 => 'tiga',
      4 => 'empat',
      5 => 'lima',
      6 => 'enam',
      7 => 'tujuh',
      8 => 'delapan',
      9 => 'sembilan',
      10 => 'sepuluh',
      11 => 'sebelas',
      12 => 'duabelas',
      13 => 'tigabelas',
      14 => 'empatbelas',
      15 => 'limabelas',
      16 => 'enambelas',
      17 => 'tujuhbelas',
      18 => 'delapanbelas',
      19 => 'sembilanbelas',
      20 => 'dua puluh',
      30 => 'tiga puluh',
      40 => 'empat puluh',
      50 => 'lima puluh',
      60 => 'enam puluh',
      70 => 'tujuh puluh',
      80 => 'delapan puluh',
      90 => 'sembilan puluh',
      100 => 'seratus',
      1000 => 'seribu',
      1000000 => 'satu juta',
      1000000000 => 'satu miliar',
      1000000000000 => 'satu triliun',
      1000000000000000 => 'satu kuadriliun'
    ];

    if ($number < 20) {
      return $words[$number];
    }

    if ($number < 100) {
      $tens = intval($number / 10) * 10;
      $units = $number % 10;
      return $words[$tens] . ($units ? ' ' . $words[$units] : '');
    }

    if ($number < 1000) {
      $hundreds = intval($number / 100);
      $remainder = $number % 100;
      return ($hundreds > 1 ? $words[$hundreds] . ' ratus' : 'seratus') . ($remainder ? ' ' . $this->terbilang($remainder) : '');
    }

    if ($number < 1000000) {
      $thousands = intval($number / 1000);
      $remainder = $number % 1000;
      return $this->terbilang($thousands) . ' ribu' . ($remainder ? ' ' . $this->terbilang($remainder) : '');
    }

    if ($number < 1000000000) {
      $millions = intval($number / 1000000);
      $remainder = $number % 1000000;
      return $this->terbilang($millions) . ' juta' . ($remainder ? ' ' . $this->terbilang($remainder) : '');
    }

    if ($number < 1000000000000) {
      $billions = intval($number / 1000000000);
      $remainder = $number % 1000000000;
      return $this->terbilang($billions) . ' miliar' . ($remainder ? ' ' . $this->terbilang($remainder) : '');
    }

    if ($number < 1000000000000000) {
      $trillions = intval($number / 1000000000000);
      $remainder = $number % 1000000000000;
      return $this->terbilang($trillions) . ' triliun' . ($remainder ? ' ' . $this->terbilang($remainder) : '');
    }

    $quadrillions = intval($number / 1000000000000000);
    $remainder = $number % 1000000000000000;
    return $this->terbilang($quadrillions) . ' kuadriliun' . ($remainder ? ' ' . $this->terbilang($remainder) : '');
  }
}
