# Struktur Data

Struktur data adalah cara menyimpan dan mengelola data di dalam komputer.

ADT(absrak data type)

## 📦 Daftar Isi

1. [Stack (ADT)](#stack)
2. [Queue (ADT)](#queue)
3. [Tree](#tree)
4. [Graph](#graph)
5. [Linked List](#linked-list)

## Stack

Stack dapat dibuat dengan array biasa, namun stack juga dapat dibuat dengan s linked list.
Stack adalah ADT yang memiliki karakteristik serupa dengan array, dengan beberapa perbedaan:

- data hanya bisa ditambah ke element terakhir
- data hanya bisa dihapus dari element terakhir
- hanya element terakhir yang bisa dibaca

ADT stack sering disebut LIFO (last in first out) karena hanya bisa ditambahkan dan di hapus di akhir.<br/>
stack di ilustrasikan sebagai Array vertikal. berikut

contoh pengunaan data stack salah satunya adalah [sistem linter](https://en.wikipedia.org/wiki/Lint_(software))

## Queue

Queue adalah ADT yang memiliki karakteristik serupa dengan array, dengan beberapa perbedaan:

- data hanya bisa ditambah ke element terakhir
- data hanya bisa dihapus dari element pertama
- hanya element pertama yang bisa dibaca,

ADT queue sering disebut FIFO (first in first out)

contoh sederhana dari algoritma queue adalah seperti saat mengantri

## Tree

Tree adalah struktur data yang digunakan secara luas yang menyerupai struktur pohon dengan sejumlah simpul yang terhubung

## Graph

Contoh jalur network di sebuah LAN

## Linked List

Linked list merupakan tipe data linear yang terhubung dengan alamat memori data selanjutnya. setiap data node menyimpan data dan alamat data selanjutnya: macam - macam Linked List :

- Singly Linked List
- Doubly Linked List
- Singly Linked List Circular (melingkar)
- Doubly Linked List Circular (melingkar)

Penerapan Linked List

- Dapat di gunakan Untuk struktur data stack dan queue
- fungsi undo
- Hash tables, Graphs
