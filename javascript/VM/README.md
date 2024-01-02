# JavaScript: VM Uder The Hood

"understaing how machine works"

"make it easy humman to read rather than make it easy for computer to execute"

## Some Notes

agenda:

- introduction to VMs
- CPU - Understanding the Pysical Machine
- VMs - Arrays, Objects, Functions, Prototype chains
- DeoptExplorer: collection data from the VM
- Deopt: Calling Conventions & Inlining
- Megamorhpism & Inline Cache: Object proprties
- Holey Arrays: Prototype chains resolutions
- == vs ===: 'valueOf()'

## CPU: Physical Machine

in CPU:

- Number
- Arithmetic operations
- Flat memory
- Conditional jumps
- Subroutine
- Register: PC (Program Counter)
- Register: SP (Stack Pointer)

## VM: Inlining & Deopt

in VM:

- Strings
- Local variables
- Memory Management (gc)
- Conditionals: if/swich
- Looping: for/while/do
- Primitive types
- Object/Arrays
- Classes
- Functions/Closures
- Exception/Stack traces

JavaScript is single-threaded

Subroutines:

- adalah serangkaian instruksi yang membentuk bagian dari sebuah program dan dirancang untuk menyelesaikan tugas tertentu. Subroutines juga dikenal dengan sebutan prosedur, fungsi, atau metode, tergantung pada bahasa pemrograman yang digunakan.

- Ada dua jenis subroutines utama:

  - Prosedur (Procedure) atau Fungsi (Function): Ini adalah blok kode yang dapat dipanggil dari berbagai bagian program.
  - Subrutin (Subroutine) atau Metode (Method): Ini adalah serangkaian instruksi yang terdapat di dalam suatu objek atau kelas. Subrutin ini diakses melalui objek atau kelas tersebut dan biasanya berinteraksi dengan data yang dimiliki oleh objek atau kelas.

- Subroutines membantu dalam meningkatkan keterbacaan, pemeliharaan, dan keberlanjutan program, karena Anda dapat mengisolasi fungsionalitas tertentu ke dalam blok-blok terpisah.

RAM is huge arrays

Optimizing Code:

Deoptimization merujuk pada situasi di mana compiler atau runtime environment mengurangi tingkat optimasi yang telah diterapkan pada kode sumber atau kode mesin. hal ini dapat memakan waktu ekstra karena memerlukan regenerasi atau restrukturisasi kode. Ini mungkin diperlukan untuk memastikan bahwa program tetap berjalan dengan benar dan aman dalam kondisi yang berubah.

deopt extention vscode: [deoptexplorer-vscode](https://marketplace.visualstudio.com/items?itemName=rbuckton.deoptexplorer-vscode)

## Micro Benchmarking

Micro benchmarking adalah proses pengukuran kinerja pada tingkat yang sangat spesifik, fokus pada komponen kecil atau fungsi dalam suatu program. Tujuannya adalah untuk mendapatkan pemahaman mendalam tentang kinerja operasi-operasi kritis dan memungkinkan pengembang untuk mengidentifikasi area-area yang perlu dioptimalkan untuk meningkatkan kinerja aplikasi atau sistem secara keseluruhan. Contohnya dapat berupa pengukuran waktu eksekusi dari operasi matematika atau fungsi tertentu.

Inline caching:

adalah teknik dalam pemrograman yang meningkatkan kinerja eksekusi kode dengan menyimpan hasil operasi yang sering digunakan secara langsung di dalam instruksi kode. Dalam JavaScript, ini sering digunakan untuk mempercepat pemanggilan fungsi atau akses properti objek dengan menyimpan referensi atau informasi lokasi yang sudah diketahui, menghindari pencarian berulang dan meningkatkan efisiensi eksekusi kode.
