/* 

Resolving Domain Requests


*/

/* 

"Recursive DNS Resolver" queries the "Authoritative Name Server"
"Authoritative Name Server" responds with "Top Level Domain Name Server"
"Recursive DNS Resolver" queries the "Top Level Domain Name Server"
"Top Level Domain Name Server" responds with "Authoritative Name Server" IP address
"Recursive DNS Resolver" queries the "Authoritative Name Server"
"Authoritative Name Server" responds with "IP Address" of the domain name

*/

/* 

Proses yang dijelaskan dalam urutan tersebut adalah bagaimana sistem Domain Name System (DNS) bekerja untuk menghubungkan nama domain dengan alamat IP yang sesuai. Berikut adalah penjelasan langkah demi langkah:

1. **Recursive DNS Resolver queries the Authoritative Name Server:**
   - Sebuah Recursive DNS Resolver (resolver) adalah server DNS yang bertanggung jawab untuk menangani permintaan DNS dari pengguna akhir atau sistem.
   - Resolver ini mengirim permintaan pertama ke Authoritative Name Server (ANS) untuk nama domain yang dicari.

2. **Authoritative Name Server responds with Top-Level Domain Name Server:**
   - Jika ANS tidak memiliki informasi tentang nama domain yang dicari, ia merespons dengan menunjukkan ke Top-Level Domain Name Server (TLD).
   - Top-Level Domain adalah bagian terakhir dari sebuah nama domain, seperti ".com", ".org", atau ".net".

3. **Recursive DNS Resolver queries the Top-Level Domain Name Server:**
   - Resolver kemudian mengirim permintaan kedua ke TLD Name Server yang ditunjukkan oleh ANS.

4. **Top-Level Domain Name Server responds with Authoritative Name Server IP address:**
   - TLD Name Server merespons dengan memberikan informasi tentang Authoritative Name Server yang bertanggung jawab untuk domain tersebut. Resolver mendapatkan alamat IP ANS dari TLD.

5. **Recursive DNS Resolver queries the Authoritative Name Server:**
   - Resolver kembali mengirimkan permintaan ke ANS menggunakan alamat IP yang diberikan oleh TLD.

6. **Authoritative Name Server responds with IP Address of the domain name:**
   - ANS, setelah menerima permintaan kedua, memberikan jawaban akhir yang berisi alamat IP yang sesuai dengan nama domain yang dicari.

Dengan demikian, melalui serangkaian pertanyaan dan jawaban antara resolver, ANS, dan TLD, sistem DNS memetakan nama domain ke alamat IP yang sesuai, memungkinkan perangkat untuk mengakses sumber daya di internet.

setiap kali Anda menggunakan internet dan menyusuri situs web, layanan, atau aplikasi online, kemungkinan besar Anda berinteraksi dengan sistem DNS yang memanfaatkan konsep ini untuk mengonversi nama domain ke alamat IP. Ini adalah bagian integral dari cara internet berfungsi dan memungkinkan pengguna untuk mengakses sumber daya dengan cara yang lebih mudah diingat dan dimengerti daripada menggunakan alamat IP langsung.

*/
