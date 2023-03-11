/*Quicksort adalah algoritma sorting yang cepat dan efisien. Quicksort bekerja dengan membagi array menjadi 2 subarray, yaitu subarray yang lebih kecil dan lebih besar dari elemen pivot. 
Kemudian, algoritma ini melakukan rekursi pada kedua subarray tersebut. Algoritma Quicksort menggunakan teknik divide and conquer untuk mengurutkan array.

Langkah-langkah Quicksort:

Pilih elemen pivot dari array.
Bagi array menjadi 2 subarray, yaitu subarray yang lebih kecil dan lebih besar dari elemen pivot.
Lakukan rekursi pada kedua subarray tersebut.
Berikut adalah implementasi Quicksort dalam bahasa Dart: */

void quickSort(List<int> numbers, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(numbers, low, high);
    quickSort(numbers, low, pivotIndex - 1);
    quickSort(numbers, pivotIndex + 1, high);
  }
}

int partition(List<int> numbers, int low, int high) {
  int pivot = numbers[high];
  int i = low - 1;
  for (int j = low; j < high; j++) {
    if (numbers[j] <= pivot) {
      i++;
      int temp = numbers[i];
      numbers[i] = numbers[j];
      numbers[j] = temp;
    }
  }
  int temp = numbers[i + 1];
  numbers[i + 1] = numbers[high];
  numbers[high] = temp;
  return i + 1;
}

void main() {
  List<int> numbers = [5, 4, 3, 2, 1];
  quickSort(numbers, 0, numbers.length - 1);
  print(numbers); // Output: [1, 2, 3, 4, 5]
}

// Dalam implementasi di atas, partition() digunakan untuk membagi array menjadi 2 subarray berdasarkan elemen pivot. Kemudian, 
//quickSort() dipanggil secara rekursif pada kedua subarray tersebut.