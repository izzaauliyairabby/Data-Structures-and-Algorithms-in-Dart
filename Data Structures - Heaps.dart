/*Heap adalah struktur data tree khusus yang memenuhi dua sifat:

Heap adalah sebuah Complete Binary Tree, yaitu semua level pada heap terisi penuh kecuali level terakhir yang diisi dari kiri ke kanan.
Heap memiliki sifat Heap Property, yaitu nilai pada setiap simpul pada heap harus lebih besar atau lebih kecil dari nilai pada anak-anaknya tergantung pada jenis heap-nya (min heap atau max heap).
Terdapat dua jenis heap yang umum digunakan, yaitu:

Min Heap: di mana nilai pada setiap simpul pada heap lebih kecil atau sama dengan nilai pada anak-anaknya.
Max Heap: di mana nilai pada setiap simpul pada heap lebih besar atau sama dengan nilai pada anak-anaknya.
Operasi dasar yang dapat dilakukan pada heap adalah:

insert: menyisipkan elemen baru pada heap dan memastikan sifat heap tetap terjaga.
delete: menghapus elemen tertentu pada heap dan memastikan sifat heap tetap terjaga.
getMin (pada min heap) atau getMax (pada max heap): mengambil nilai minimum atau maksimum pada heap tanpa menghapusnya.
extractMin (pada min heap) atau extractMax (pada max heap): mengambil nilai minimum atau maksimum pada heap dan menghapusnya dari heap.
Contoh implementasi sederhana pada Dart untuk min heap: */

class MinHeap {
  List<int> heap;

  MinHeap() {
    heap = [];
  }

  void insert(int value) {
    heap.add(value);
    int current = heap.length - 1;
    while (current > 0 && heap[(current - 1) ~/ 2] > heap[current]) {
      int parentIndex = (current - 1) ~/ 2;
      int temp = heap[parentIndex];
      heap[parentIndex] = heap[current];
      heap[current] = temp;
      current = parentIndex;
    }
  }

  int extractMin() {
    if (heap.isEmpty) {
      return null;
    }
    int min = heap[0];
    heap[0] = heap.last;
    heap.removeLast();
    int current = 0;
    while (true) {
      int leftChildIndex = current * 2 + 1;
      int rightChildIndex = current * 2 + 2;
      int smallestChildIndex = current;
      if (leftChildIndex < heap.length &&
          heap[leftChildIndex] < heap[smallestChildIndex]) {
        smallestChildIndex = leftChildIndex;
      }
      if (rightChildIndex < heap.length &&
          heap[rightChildIndex] < heap[smallestChildIndex]) {
        smallestChildIndex = rightChildIndex;
      }
      if (smallestChildIndex == current) {
        break;
      }
      int temp = heap[current];
      heap[current] = heap[smallestChildIndex];
      heap[smallestChildIndex] = temp;
      current = smallestChildIndex;
    }
    return min;
  }
}

/*Di atas, kita membuat class MinHeap yang merepresentasikan min heap. 
Class ini memiliki variabel heap yang merupakan list untuk menyimpan nilai pada heap. 
Class ini juga memiliki dua metode, yaitu insert untuk menyisipkan elemen baru pada heap dan extractMin untuk mengambil nilai minimum pada heap dan menghapusnya dari heap.
Pada metode insert, kita menambahkan elemen baru pada list dan melakukan perulangan untuk memastikan sifat heap tetap terjaga. 
Perulangan dilakukan dengan mengecek apakah nilai pada simpul saat ini lebih kecil dari nilai pada parent-nya. Jika iya, maka nilai pada simpul tersebut ditukar dengan nilai parent-nya, 
dan perulangan dilanjutkan pada parent-nya.

Pada metode extractMin, kita mengambil nilai minimum pada heap dengan mengambil nilai pada simpul root, yaitu heap[0].
Kemudian, nilai pada simpul root diganti dengan nilai pada simpul terakhir pada heap, dan simpul terakhir dihapus dari heap. 
Setelah itu, perulangan dilakukan untuk memastikan sifat heap tetap terjaga. Perulangan dilakukan dengan mengecek apakah nilai pada simpul saat ini lebih besar dari nilai pada salah satu anaknya. 
Jika iya, maka nilai pada simpul tersebut ditukar dengan nilai pada anak-nya yang lebih kecil, dan perulangan dilanjutkan pada anak yang lebih kecil tersebut.

Heaps sering digunakan dalam berbagai algoritma seperti heap sort, Dijkstra's algorithm, dan Huffman encoding.*/

