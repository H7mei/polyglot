/* 

HTTP 1, 2 & 3


*/

// HTTP/2 allows multiple requests and responses concurrently over a single TCP connection.

// HTTP/3 can only be used with HTTPS.

// HTTP/2 is backwards compatible with HTTP/1.1.

// HTTP/1.1 requires multiple TCP connections to process multiple requests in simultaneous.

// ###

/* 

HTTP (Hypertext Transfer Protocol) adalah protokol dasar yang digunakan untuk mentransfer data di web. Berikut adalah ringkasan singkat dari HTTP versi 1 hingga 3:

1. **HTTP/1.0 (1996)**: Versi pertama HTTP yang terdokumentasi. HTTP/1.0 mengoperasikan setiap permintaan/respons dalam satu koneksi TCP terpisah, yang berarti koneksi baru dibuat untuk setiap permintaan halaman web dan elemen di dalamnya (seperti gambar, gaya, dll). Ini menyebabkan kinerja yang lambat karena pembukaan dan penutupan koneksi yang sering.

2. **HTTP/1.1 (1997)**: Diperkenalkan untuk mengatasi beberapa masalah dalam HTTP/1.0. HTTP/1.1 memperkenalkan konsep "koneksi persisten" (keep-alive), yang memungkinkan beberapa permintaan dan respons melewati koneksi TCP yang sama, mengurangi overhead yang terkait dengan pembukaan dan penutupan koneksi berulang kali. HTTP/1.1 juga memperkenalkan beberapa fitur lain seperti pipelining (mengirim beberapa permintaan sebelum menerima respons) dan chunked transfer encoding.

3. **HTTP/2 (2015)**: Versi ini memberikan peningkatan signifikan dalam kinerja dengan memperkenalkan multiplexing, di mana banyak permintaan dan respons dapat saling bercampur pada koneksi yang sama. Ini mengurangi latensi dan meningkatkan penggunaan bandwidth. HTTP/2 juga menambahkan kompresi header dan dukungan untuk Server Push, di mana server dapat mengirim sumber daya yang diantisipasi tanpa diminta oleh klien.

4. **HTTP/3 (2020)**: Terbaru dan paling canggih, HTTP/3 dibangun di atas QUIC, protokol yang menggunakan UDP (User Datagram Protocol) daripada TCP. Ini dirancang untuk mengurangi latensi lebih lanjut, terutama dalam memulai koneksi dan mengatasi masalah "head-of-line blocking" yang masih ada di HTTP/2. QUIC menyediakan enkripsi dan manajemen koneksi yang lebih baik, menjadikan HTTP/3 lebih cepat dan lebih aman.

Setiap versi HTTP bertujuan untuk meningkatkan kecepatan, efisiensi, dan keamanan transfer data di internet.

*/
