/*Mergesort adalah algoritma sorting rekursif yang memecah array menjadi dua bagian yang lebih kecil, mengurutkan kedua bagian tersebut secara terpisah, dan kemudian menggabungkannya kembali menjadi satu array terurut. Algoritma ini menggunakan teknik divide-and-conquer (bagi-dan-kuasai) untuk memecah masalah menjadi bagian yang lebih kecil dan kemudian menggabungkan solusinya.

Langkah-langkah Mergesort:

Jika array hanya memiliki satu elemen atau kurang, itu dianggap terurut.
Jika array memiliki lebih dari satu elemen, bagi array menjadi dua bagian yang lebih kecil.
Rekursif memanggil Mergesort pada setiap bagian yang lebih kecil untuk mengurutkan elemennya.
Gabungkan dua bagian yang terurut menjadi satu array terurut.
Berikut adalah implementasi Mergesort dalam bahasa Dart: */

void mergeSort(List<int> numbers, int left, int right) {
  if (left < right) {
    int middle = (left + right) ~/ 2;
    mergeSort(numbers, left, middle);
    mergeSort(numbers, middle + 1, right);
    merge(numbers, left, middle, right);
  }
}

void merge(List<int> numbers, int left, int middle, int right) {
  List<int> leftArray =
      List.generate(middle - left + 1, (i) => numbers[left + i]);
  List<int> rightArray =
      List.generate(right - middle, (i) => numbers[middle + 1 + i]);
  int i = 0;
  int j = 0;
  int k = left;
  while (i < leftArray.length && j < rightArray.length) {
    if (leftArray[i] <= rightArray[j]) {
      numbers[k] = leftArray[i];
      i++;
    } else {
      numbers[k] = rightArray[j];
      j++;
    }
    k++;
  }
  while (i < leftArray.length) {
    numbers[k] = leftArray[i];
    i++;
    k++;
  }
  while (j < rightArray.length) {
    numbers[k] = rightArray[j];
    j++;
    k++;
  }
}

void main() {
  List<int> numbers = [5, 4, 3, 2, 1];
  mergeSort(numbers, 0, numbers.length - 1);
  print(numbers); // Output: [1, 2, 3, 4, 5]
}

/*Dalam implementasi di atas, fungsi mergeSort menerima tiga parameter: array numbers, indeks awal left, dan indeks akhir right. 
Jika array memiliki lebih dari satu elemen, fungsi ini memanggil dirinya sendiri untuk membagi array menjadi dua bagian yang lebih kecil, 
mengurutkan kedua bagian tersebut secara terpisah, dan kemudian menggabungkannya kembali menjadi satu array terurut dengan memanggil fungsi merge.

Fungsi merge menerima empat parameter: array numbers, indeks awal left, indeks tengah middle, dan indeks akhir right. 
Fungsi ini membuat dua array baru dari bagian kiri dan kanan dari array numbers, membandingkan dan menyalin elemen dari kedua array ke array numbers dalam urutan yang benar. */