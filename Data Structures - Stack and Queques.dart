/* Stack dan Queue adalah dua struktur data dasar yang digunakan dalam pemrograman. 
Kedua struktur data ini memungkinkan kita untuk menyimpan dan mengakses data dalam urutan tertentu, dengan cara yang berbeda.

Stack adalah struktur data linear yang mengikuti prinsip LIFO (Last-In-First-Out),
artinya elemen terakhir yang dimasukkan akan menjadi elemen pertama yang keluar.
Kita dapat membayangkan stack seperti tumpukan buku, di mana buku yang terakhir diletakkan di atas tumpukan adalah buku yang pertama diambil saat membongkar tumpukan. 
Stack memiliki dua operasi utama, yaitu push untuk menambahkan elemen ke dalam stack dan pop untuk mengeluarkan elemen teratas dari stack.

Contoh implementasi stack di Dart: */

class Stack {
  List _stack = [];

  void push(dynamic value) {
    _stack.add(value);
  }

  dynamic pop() {
    if (_stack.isEmpty) {
      return null;
    } else {
      return _stack.removeLast();
    }
  }

  dynamic peek() {
    if (_stack.isEmpty) {
      return null;
    } else {
      return _stack.last;
    }
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }
}

/*
Di atas, kita membuat sebuah class Stack yang memiliki variabel _stack bertipe List untuk menyimpan elemen-elemen di dalam stack. 
Metode push digunakan untuk menambahkan elemen ke dalam stack, dengan cara menambahkan elemen tersebut ke dalam List _stack. 
Metode pop digunakan untuk mengeluarkan elemen teratas dari stack, dengan cara menghapus elemen terakhir dari List _stack dan mengembalikan nilainya.
Metode peek digunakan untuk mengembalikan nilai dari elemen teratas di stack tanpa menghapusnya, dengan cara mengembalikan nilai dari last di List _stack.
Metode isEmpty digunakan untuk memeriksa apakah stack kosong atau tidak, dengan cara memeriksa apakah List _stack kosong atau tidak.
Queue adalah struktur data linear yang mengikuti prinsip FIFO (First-In-First-Out), artinya elemen pertama yang dimasukkan akan menjadi elemen pertama yang keluar. 
Kita dapat membayangkan queue seperti antrian di sebuah toko, di mana orang yang pertama kali datang ke toko akan dilayani terlebih dahulu. Queue juga memiliki dua operasi utama, 
yaitu enqueue untuk menambahkan elemen ke dalam queue dan dequeue untuk mengeluarkan elemen pertama dari queue.
Contoh implementasi queue di Dart:
*/

class Queue {
  List _queue = [];

  void enqueue(dynamic value) {
    _queue.add(value);
  }

  dynamic dequeue() {
    if (_queue.isEmpty) {
      return null;
    } else {
      return _queue.removeAt(0);
    }
  }

  dynamic peek() {
    if (_queue.isEmpty) {
      return null;
    } else {
      return _queue.first;
    }
  }

  bool isEmpty() {
    return _queue.isEmpty;
  }
}

/* Di atas, kita membuat sebuah class Queue yang memiliki variabel _queue bertipe List untuk menyimpan elemen-elemen di dalam queue. 
Metode enqueue digunakan untuk menambahkan elemen ke dalam queue, dengan cara menambahkan elemen tersebut ke dalam List _queue. 
Metode dequeue digunakan untuk mengeluarkan elemen pertama dari queue, dengan cara menghapus elemen pertama dari List _queue dan mengembalikan nilainya. 
Metode peek digunakan untuk mengembalikan nilai dari elemen pertama di queue tanpa menghapusnya, dengan cara mengembalikan nilai dari first di List _queue. 
Metode isEmpty digunakan untuk memeriksa apakah queue kosong atau tidak, dengan cara memeriksa apakah List _queue kosong atau tidak.

Kedua struktur data ini sangat berguna dalam banyak aplikasi, 
seperti pemrosesan kata dan bahasa alami, analisis data, dan pemrograman paralel. 
Penting untuk memahami bagaimana stack dan queue bekerja dan bagaimana mengimplementasikannya dalam kode untuk membuat program yang lebih efisien dan efektif.*/

