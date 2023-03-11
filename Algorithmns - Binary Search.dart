/*Algoritma Binary Search bekerja dengan cara membandingkan nilai yang dicari dengan nilai tengah dari array. 
Jika nilai yang dicari lebih kecil dari nilai tengah, maka pencarian dilanjutkan pada separuh kiri dari array. 

Jika nilai yang dicari lebih besar dari nilai tengah, maka pencarian dilanjutkan pada separuh kanan dari array. 
Pencarian dilakukan terus-menerus pada separuh array yang lebih kecil sampai nilai yang dicari ditemukan atau seluruh array sudah diperiksa.

Berikut adalah implementasi Binary Search dalam bahasa Dart: */

int binarySearch(List<int> numbers, int value) {
  int left = 0;
  int right = numbers.length - 1;
  while (left <= right) {
    int middle = (left + right) ~/ 2;
    if (numbers[middle] == value) {
      return middle;
    } else if (numbers[middle] > value) {
      right = middle - 1;
    } else {
      left = middle + 1;
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int index = binarySearch(numbers, 3);
  print(index); // Output: 2
}

/*Dalam implementasi di atas, fungsi binarySearch menerima dua parameter: array numbers yang sudah terurut dan nilai value yang dicari. 
Fungsi ini menggunakan dua indeks, left dan right, untuk menunjukkan rentang array yang sedang dicari. Pertama-tama, 
fungsi ini menentukan nilai tengah dari rentang ini dan membandingkannya dengan nilai value. Jika nilai tengah sama dengan value, fungsi mengembalikan indeksnya. 
Jika nilai tengah lebih besar dari value, maka rentang pencarian dipindahkan ke separuh kiri dari array. Jika nilai tengah lebih kecil dari value, 
maka rentang pencarian dipindahkan ke separuh kanan dari array. Proses ini berlanjut terus menerus hingga nilai value ditemukan atau seluruh array sudah diperiksa.

Dalam contoh di atas, fungsi binarySearch mencari nilai 3 dalam array [1, 2, 3, 4, 5] dan mengembalikan indeks 2, yang merupakan indeks dari nilai 3 dalam array tersebut. */
