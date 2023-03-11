/*Linked list adalah struktur data yang terdiri dari sejumlah simpul, 
dimana setiap simpul memiliki data dan referensi ke simpul berikutnya dalam urutan. 
Dalam bahasa Dart dan Flutter, kita dapat membuat linked list menggunakan class dan objek.
Berikut adalah contoh implementasi linked list menggunakan class di Dart: */

class Node {
  int data;
  Node next;

  Node(this.data);
}

class LinkedList {
  Node head;

  void add(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      Node current = head;

      while (current.next != null) {
        current = current.next;
      }

      current.next = newNode;
    }
  }

  void remove(int data) {
    if (head == null) {
      return;
    }

    if (head.data == data) {
      head = head.next;
      return;
    }

    Node current = head;

    while (current.next != null) {
      if (current.next.data == data) {
        current.next = current.next.next;
        return;
      }

      current = current.next;
    }
  }

  void printList() {
    Node current = head;

    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

/* Dalam implementasi di atas, class Node merepresentasikan simpul dalam linked list,
 sedangkan class LinkedList merepresentasikan linked list itu sendiri. Setiap simpul memiliki data (data) dan referensi ke simpul berikutnya (next).
Metode add digunakan untuk menambahkan simpul baru ke linked list. Jika linked list masih kosong (head == null), simpul baru akan menjadi kepala (head). 
Jika tidak, metode akan mencari simpul terakhir dalam linked list (while (current.next != null)) 
dan menambahkan simpul baru sebagai simpul berikutnya (current.next = newNode).
Metode remove digunakan untuk menghapus simpul dari linked list berdasarkan nilai data. 
Jika simpul yang ingin dihapus adalah kepala, kepala akan diubah ke simpul berikutnya (head = head.next).
 Jika tidak, metode akan mencari simpul dengan nilai data yang sama dan menghapusnya (current.next = current.next.next).
Metode printList digunakan untuk mencetak semua nilai data dalam linked list.
Dengan menggunakan implementasi linked list di atas, kita dapat membuat dan memanipulasi 
linked list dalam program Flutter menggunakan bahasa Dart. */