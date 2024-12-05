<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Crypto Masters</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    body {
      background: linear-gradient(to bottom, #a7c4f2, #d4f3ef);
      overflow: hidden;
    }

    .flower {
      position: absolute;
      width: 50px;
      height: 50px;
      background: url('https://www.svgrepo.com/show/452169/bitcoin.svg') no-repeat center center;
      background-size: cover;
      object-fit: contain;
      animation: moveFlowers 15s infinite linear;
    }

    @keyframes moveFlowers {
      0% {
        transform: translateY(0) rotate(0deg);
      }

      100% {
        transform: translateY(-100vh) rotate(360deg);
      }
    }

    .flower:nth-child(2) {
      animation-duration: 12s;
      animation-delay: 2s;
      left: 10%;
      width: 40px;
      height: 40px;
    }

    .flower:nth-child(3) {
      animation-duration: 18s;
      animation-delay: 4s;
      left: 20%;
      width: 60px;
      height: 60px;
    }

    .flower:nth-child(4) {
      animation-duration: 20s;
      animation-delay: 6s;
      left: 30%;
      width: 30px;
      height: 30px;
    }

    .flower:nth-child(5) {
      animation-duration: 25s;
      animation-delay: 1s;
      left: 40%;
      width: 55px;
      height: 55px;
    }

    .flower:nth-child(6) {
      animation-duration: 15s;
      animation-delay: 3s;
      left: 50%;
      width: 50px;
      height: 50px;
    }

    .marquee-container {
      width: 100%;
      overflow: hidden;
      background-color: rgba(0, 0, 0, 0.7);
      color: #fff;
      padding: 10px 0;
      position: fixed;
      bottom: 0;
      z-index: 100;
      font-size: 1rem;
      text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.5);
    }

    .marquee {
      display: flex;
      animation: marquee 25s linear infinite;
      white-space: nowrap;
    }

    .marquee span {
      margin-right: 50px;
      font-weight: bold;
      color: #fff;
    }

    @keyframes marquee {
      0% {
        transform: translateX(100%);
      }

      100% {
        transform: translateX(-100%);
      }
    }
  </style>
</head>

<body class="bg-gray-100 flex items-center justify-center min-h-screen">
  <div class="w-full max-w-md p-6 bg-white rounded-lg shadow-xl relative z-10 mt-12">
    <h1 class="text-3xl font-bold text-center text-gray-800 mb-6">Crypto Masters</h1>

    <form action="convert.php" class="space-y-4">
      <div>
        <label for="amount" class="block text-sm font-medium text-gray-700">Amount</label>
        <input name="amount" type="number" placeholder="Enter amount" min="0" step="0.0001" required
          class="w-full mt-1 p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500">
      </div>
      <div>
        <label for="currency" class="block text-sm font-medium text-gray-700">Currency</label>
        <select name="currency"
          class="w-full mt-1 p-3 border border-gray-300 rounded-lg bg-white focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500">
          <option value="bitcoin">Bitcoin (BTC)</option>
          <option value="ethereum">Ethereum (ETH)</option>
          <option value="solana">Solana (SOL)</option>
        </select>
      </div>
      <div class="text-center">
        <button type="submit"
          class="w-full p-3 bg-indigo-600 text-white rounded-lg font-semibold hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500">
          Convert
        </button>
      </div>
    </form>
  </div>
  <div class="flower" style="left: 20%; top: 100%;"></div>
  <div class="flower" style="left: 40%; top: 110%;"></div>
  <div class="flower" style="left: 60%; top: 105%;"></div>
  <div class="flower" style="left: 80%; top: 100%;"></div>
  <div class="flower" style="left: 10%; top: 115%;"></div>
  <div class="marquee-container">
    <div class="marquee" id="crypto-prices">
      <span>Loading crypto prices...</span>
    </div>
  </div>

  <script>
    async function fetchCryptoPrices() {
      try {
        const response = await fetch('https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum,solana,cardano,polkadot,litecoin,ripple,binancecoin,dogecoin,uniswap,chainlink,avalanche,tron&vs_currencies=usd');
        const data = await response.json();
        const prices = `
          BTC: $${data.bitcoin.usd} | ETH: $${data.ethereum.usd} | SOL: $${data.solana.usd} | ADA: $${data.cardano.usd} | 
          DOT: $${data.polkadot.usd} | LTC: $${data.litecoin.usd} | XRP: $${data.ripple.usd} | BNB: $${data.binancecoin.usd} | 
          DOGE: $${data.dogecoin.usd} | UNI: $${data.uniswap.usd} | LINK: $${data.chainlink.usd} | TRX: $${data.tron.usd}
        `;

        document.getElementById('crypto-prices').innerHTML = `<span>${prices}</span>`;
      } catch (error) {
        console.error('Error fetching crypto prices:', error);
        document.getElementById('crypto-prices').innerHTML = `<span>Error loading prices</span>`;
      }
    }

    fetchCryptoPrices();
    setInterval(fetchCryptoPrices, 30000);
  </script>
</body>

</html>