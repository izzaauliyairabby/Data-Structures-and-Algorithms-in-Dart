/*Big O notation adalah sebuah notasi matematika yang digunakan untuk mengukur kompleksitas waktu dari sebuah algoritma atau program dalam kaitannya dengan ukuran inputnya. 
Notasi ini digunakan untuk menggambarkan seberapa cepat waktu eksekusi dari sebuah algoritma atau program meningkat ketika ukuran inputnya meningkat.

Di Dart, kita bisa menghitung kompleksitas waktu dari sebuah algoritma atau program dengan menganalisis kode dan menghitung jumlah operasi yang dilakukan pada kasus terburuk. 
Kemudian, kita bisa merepresentasikan kompleksitas waktu menggunakan Big O notation.

Berikut adalah beberapa kompleksitas waktu yang umum dan notasi Big O-nya di Dart:

O(1): kompleksitas waktu konstan. Sebuah algoritma atau program yang memiliki kompleksitas waktu O(1) akan selalu menjalankan operasi yang sama, 
tidak peduli seberapa besar ukuran inputnya. Contoh sederhana adalah akses elemen array menggunakan indeks. Karena array menyimpan elemen pada posisi yang telah ditentukan, 
waktu akses elemen pada posisi tertentu selalu konstan, tidak peduli seberapa besar ukuran array-nya. */

List<int> numbers = [1, 2, 3, 4, 5];
int firstNumber = numbers[0]; // O(1)

/* O(n): kompleksitas waktu linier. Sebuah algoritma atau program yang memiliki kompleksitas waktu O(n) akan memiliki waktu eksekusi yang meningkat secara linier seiring dengan pertambahan ukuran inputnya. 
Contoh sederhana adalah mencari elemen tertentu dalam array yang tidak terurut. Dalam kasus ini, waktu yang dibutuhkan untuk mencari elemen tersebut secara proporsional dengan jumlah elemen dalam array. */

bool findElement(List<int> numbers, int element) {
  for (int i = 0; i < numbers.length; i++) { // O(n)
    if (numbers[i] == element) {
      return true;
    }
  }
  return false;
}

List<int> numbers = [1, 2, 3, 4, 5];
bool found = findElement(numbers, 3); // O(n)


/* O(n^2): kompleksitas waktu kuadratik. Sebuah algoritma atau program yang memiliki kompleksitas waktu O(n^2) akan memiliki waktu eksekusi yang meningkat secara kuadratik seiring dengan pertambahan ukuran inputnya. 
Contoh sederhana adalah algoritma selection sort untuk mengurutkan array. Dalam kasus ini, algoritma akan membandingkan setiap elemen dalam array dengan elemen-elemen lainnya, 
sehingga waktu eksekusinya proporsional dengan kuadrat dari jumlah elemen dalam array.  */

void selectionSort(List<int> numbers) {
  for (int i = 0; i < numbers.length - 1; i++) { // O(n)
    int minIndex = i;
    for (int j = i + 1; j < numbers.length; j++) { // O(n)
      if (numbers[j] < numbers[minIndex]) {
        minIndex = j;
      }
    }
    if (minIndex != i) {
      int temp = numbers[i];
      numbers[i] = numbers[minIndex];
      numbers[minIndex] = temp;
    }
  }
}

List<int> numbers = [5, 4, 3, 2, 1];
selectionSort(numbers); // O(n^2)

/* O(log n): kompleksitas waktu logaritmik. Sebuah algoritma atau program yang memiliki kompleksitas waktu O(log n) akan memiliki waktu eksekusi yang meningkat secara logaritmik seiring dengan pertambahan ukuran inputnya. 
Contoh sederhana adalah binary search, sebuah algoritma untuk mencari elemen tertentu dalam array yang terurut. Dalam kasus ini, 
waktu yang dibutuhkan untuk mencari elemen tertentu secara logaritmik tergantung pada ukuran array. 
Semakin besar array, semakin sedikit operasi yang harus dilakukan untuk menemukan elemen tersebut. */

int binarySearch(List<int> numbers, int element) {
  int low = 0;
  int high = numbers.length - 1;
  while (low <= high) { // O(log n)
    int mid = (low + high) ~/ 2;
    if (numbers[mid] == element) {
      return mid;
    } else if (numbers[mid] < element) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

List<int> numbers = [1, 2, 3, 4, 5];
int index = binarySearch(numbers, 3); // O(log n)

/* Penggunaan Big O notation sangat penting dalam analisis algoritma dan pemrograman, 
karena membantu kita memilih algoritma yang tepat untuk menyelesaikan suatu masalah dalam waktu yang efisien. 
Dengan memilih algoritma yang tepat, kita dapat meningkatkan kinerja program dan menghemat waktu dan sumber daya komputasi yang digunakan. */

