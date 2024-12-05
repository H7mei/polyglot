<?php
require_once '../oop/converter.php';

$amount = $_GET['amount'];
$currency = $_GET['currency'];

$converter = new CryptoConverter($currency);

$result = $converter->convert($amount);

$resultFormatted = number_format($result['price'], 0, ',', '.');
$priceOneFormatted = number_format($result['one'], 0, ',', '.');

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Conversion Result</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css">
  <style>
    body,
    html {
      background-color: #697a8a;
    }

    .meteor-container {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
      overflow: hidden;
    }

    .meteor {
      position: absolute;
      width: 40px;
      height: 40px;
      background-image: url('https://www.svgrepo.com/show/535499/meteor.svg');
      background-size: contain;
      background-repeat: no-repeat;
      opacity: 0.8;
      animation: fall forwards infinite;
    }

    @keyframes fall {
      0% {
        top: -100px;
        left: calc(100% * var(--pos));
        opacity: 0.8;
      }

      100% {
        top: 100vh;
        left: calc(100% * var(--pos) + 200px);
        opacity: 0;
      }
    }

    .meteor:nth-child(1) {
      animation-duration: 1s;
      --pos: 0.1;
    }

    .meteor:nth-child(2) {
      animation-duration: 1.5s;
      --pos: 0.3;
    }

    .meteor:nth-child(3) {
      animation-duration: 2.2s;
      --pos: 0.5;
    }

    .meteor:nth-child(4) {
      animation-duration: 1.8s;
      --pos: 0.7;
    }

    .meteor:nth-child(5) {
      animation-duration: 2.5s;
      --pos: 0.9;
    }

    .tag:not(body) {
      align-items: center;
      background-color: #f5f5f5;
      border-radius: 4px;
      color: #4a4a4a;
      display: inline-flex;
      font-size: .75rem;
      height: 2em;
      justify-content: center;
      line-height: 1.5;
      padding-left: .75em;
      padding-right: .75em;
      white-space: nowrap;
      text-wrap: auto;
    }
  </style>
</head>

<body>
  <div class="meteor-container">
    <div class="meteor"></div>
    <div class="meteor"></div>
    <div class="meteor"></div>
    <div class="meteor"></div>
    <div class="meteor"></div>
  </div>
  <section class="section">
    <div class="container">
      <div class="box has-background-light">
        <h1 class="title has-text-primary is-size-2">Conversion Result</h1>
        <div class="content">
          <p class="is-size-5">
            <strong>Amount:</strong>
            <span class="tag is-info is-light is-size-6"><?php echo htmlspecialchars($_GET['amount']); ?></span>
          </p>
          <p class="is-size-5">
            <strong>Crypto Currency:</strong>
            <span class="tag is-link is-light is-size-6"><?php echo htmlspecialchars($_GET['currency']); ?></span>
          </p>
          <p class="is-size-5">
            <strong>Convert Currency:</strong>
            <span class="tag is-primary is-light is-size-6">IDR</span>
          </p>
          <p class="is-size-5">
            <strong>Price (1):</strong>
            <span class="tag is-warning is-light is-size-6"><?php echo "Rp " . $priceOneFormatted ?></span>
          </p>
          <p class="is-size-5">
            <strong>Total Price:</strong>
            <span class="tag is-success is-light is-size-6"><?php echo "Rp " . $resultFormatted; ?></span>
          </p>
          <p class="is-size-5">
            <strong>Terbilang:</strong>
            <span class="tag is-danger is-light is-size-6"><?php echo $result['terbilang'] ?> rupiah</span>
          </p>
        </div>
      </div>
    </div>
    <div class="buttons is-centered" style="margin-top: 20px;">
      <a href="index.php" class="button is-primary is-rounded">Home</a>
      <a href="crypto.php" class="button is-link is-rounded">Convert Again</a>
    </div>
    </div>
  </section>

</body>

</html>