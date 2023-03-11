/* Bubblesort adalah algoritma sorting sederhana yang bekerja dengan membandingkan setiap pasangan elemen berturut-turut dalam array dan menukarkan elemen jika urutannya salah. Algoritma ini terus membandingkan dan menukarkan elemen sampai seluruh array terurut.

Langkah-langkah Bubblesort:

Bandingkan elemen pertama dan kedua dalam array. Jika elemen pertama lebih besar dari elemen kedua, tukar posisi keduanya.
Bandingkan elemen kedua dan ketiga dalam array. Jika elemen kedua lebih besar dari elemen ketiga, tukar posisi keduanya.
Lanjutkan proses ini hingga semua pasangan elemen berturut-turut telah dibandingkan dan ditukar jika diperlukan. Setelah iterasi pertama, elemen terbesar akan berada di posisi terakhir.
Ulangi proses untuk semua elemen kecuali yang terakhir. Setelah iterasi kedua, elemen terbesar kedua akan berada di posisi terakhir kecuali.
Ulangi proses hingga seluruh array terurut.
Berikut adalah implementasi Bubblesort dalam bahasa Dart:*/

void bubbleSort(List<int> numbers) {
  int n = numbers.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> numbers = [5, 4, 3, 2, 1];
  bubbleSort(numbers);
  print(numbers); // Output: [1, 2, 3, 4, 5]
}

/*Dalam implementasi di atas, dua perulangan for digunakan untuk membandingkan dan menukar pasangan elemen dalam array. 
Perulangan pertama digunakan untuk mengulang iterasi pada seluruh array, 
sedangkan perulangan kedua digunakan untuk membandingkan pasangan elemen berturut-turut dan menukarnya jika diperlukan. */