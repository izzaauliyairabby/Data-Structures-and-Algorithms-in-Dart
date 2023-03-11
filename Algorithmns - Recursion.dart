/*Rekursi adalah teknik dalam pemrograman di mana suatu fungsi memanggil dirinya sendiri untuk menyelesaikan suatu masalah. Teknik ini sering digunakan untuk menyelesaikan masalah yang dapat dibagi menjadi submasalah yang lebih kecil dan mirip.

Beberapa contoh masalah yang dapat diselesaikan dengan rekursi adalah:

Faktorial: menghitung nilai faktorial dari suatu bilangan n.
Fibonaci: menghitung nilai deret Fibonaci dari suatu bilangan n.
Pencarian dalam struktur data seperti pohon atau graf.
Contoh implementasi rekursi dalam Dart:*/

// Contoh implementasi fungsi faktorial dengan rekursi
int faktorial(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * faktorial(n - 1);
  }
}

// Contoh implementasi fungsi Fibonaci dengan rekursi
int fibonaci(int n) {
  if (n == 0 || n == 1) {
    return n;
  } else {
    return fibonaci(n - 1) + fibonaci(n - 2);
  }
}

void main() {
  // Contoh penggunaan fungsi faktorial
  int n = 5;
  print("Faktorial dari $n adalah ${faktorial(n)}");

  // Contoh penggunaan fungsi Fibonaci
  int m = 10;
  print("Nilai Fibonaci dari $m adalah ${fibonaci(m)}");
}
