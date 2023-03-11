/*Hash table adalah struktur data yang digunakan untuk menyimpan kumpulan pasangan kunci-nilai. 
Hash table memungkinkan akses ke nilai dalam waktu konstan, yaitu O(1), pada kasus terbaik dan rata-rata, meskipun pada kasus terburuk memerlukan waktu O(n).

Hash table bekerja dengan cara melakukan hash pada kunci yang diberikan untuk menghasilkan nilai indeks pada array. 
Setiap indeks pada array disebut bucket dan dapat menyimpan beberapa pasangan kunci-nilai. 
Saat kita ingin menambahkan atau mengambil nilai, kita hanya perlu menghitung hash dari kunci yang diberikan untuk menemukan bucket yang tepat.

Dalam implementasi hash table, terdapat beberapa hal yang harus diperhatikan, yaitu:

Hash Function: adalah fungsi yang digunakan untuk mengubah kunci menjadi nilai indeks pada array. 
Hash function harus menghasilkan nilai yang unik untuk setiap kunci dan memberikan distribusi yang merata pada array.

Collision Resolution: adalah cara untuk menangani kasus ketika dua atau lebih kunci menghasilkan nilai hash yang sama. 
Collision dapat terjadi ketika hash function tidak menghasilkan nilai yang unik untuk setiap kunci atau ketika ukuran array terlalu kecil. 
Ada beberapa teknik yang digunakan untuk menyelesaikan collision, seperti chaining dan open addressing.

Load Factor: adalah rasio antara jumlah item dalam hash table dengan kapasitas array. 
Load factor harus selalu dijaga agar tidak terlalu tinggi atau rendah. Jika load factor terlalu tinggi, 
maka akan meningkatkan kemungkinan collision dan memperlambat akses ke nilai pada hash table. 
Jika load factor terlalu rendah, maka akan membuang ruang pada array.

Contoh implementasi sederhana pada Dart untuk hash table menggunakan teknik chaining:*/

class HashTable {
  List<List<MapEntry<String, dynamic>>> buckets;
  int capacity;
  int size;

  HashTable(int capacity) {
    this.capacity = capacity;
    this.size = 0;
    buckets = List.generate(capacity, (_) => []);
  }

  int _hash(String key) {
    int hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash = (hash + key.codeUnitAt(i) * (i + 1)) % capacity;
    }
    return hash;
  }

  void put(String key, dynamic value) {
    int index = _hash(key);
    for (int i = 0; i < buckets[index].length; i++) {
      if (buckets[index][i].key == key) {
        buckets[index][i] = MapEntry(key, value);
        return;
      }
    }
    buckets[index].add(MapEntry(key, value));
    size++;
  }

  dynamic get(String key) {
    int index = _hash(key);
    for (int i = 0; i < buckets[index].length; i++) {
      if (buckets[index][i].key == key) {
        return buckets[index][i].value;
      }
    }
    return null;
  }

  void remove(String key) {
    int index = _hash(key);
    for (int i = 0; i < buckets[index].length; i++) {
      if (buckets[index][i].key == key) {
        buckets[index].removeAt(i);
        size--;
        return;
      }
    }
  }
}

/*Di atas, kita membuat kelas HashTable yang memiliki atribut buckets, capacity, dan size. 
Atribut buckets adalah array 2D yang digunakan untuk menyimpan pasangan kunci-nilai. 
Atribut capacity menentukan ukuran maksimum hash table, sementara atribut size menentukan jumlah pasangan kunci-nilai yang saat ini disimpan di dalam hash table.

Fungsi _hash digunakan untuk menghasilkan nilai indeks pada array menggunakan teknik hashing sederhana. 
Fungsi ini mengambil sebuah string kunci dan menghitung jumlah karakter dalam string tersebut, 
kemudian mengalikan setiap karakter dengan urutan karakternya dalam string dan menjumlahkannya. 
Nilai akhir kemudian diambil modulus dengan kapasitas hash table untuk mendapatkan nilai indeks pada array.

Fungsi put digunakan untuk menambahkan pasangan kunci-nilai ke dalam hash table. 
Fungsi ini pertama-tama menghitung hash dari kunci yang diberikan untuk menentukan bucket yang tepat. 
Kemudian, fungsi akan mencari apakah kunci tersebut sudah ada di dalam bucket. 
Jika ya, nilai pada kunci tersebut akan diperbarui dengan nilai baru. Jika tidak, pasangan kunci-nilai baru akan ditambahkan ke dalam bucket.

Fungsi get digunakan untuk mengambil nilai yang disimpan dalam hash table berdasarkan kunci yang diberikan. 
Fungsi ini juga menghitung hash dari kunci yang diberikan untuk menentukan bucket yang tepat. 
Kemudian, fungsi akan mencari pasangan kunci-nilai di dalam bucket yang memiliki kunci yang sama dengan kunci yang diberikan. 
Jika ditemukan, fungsi akan mengembalikan nilai dari pasangan kunci-nilai tersebut. Jika tidak ditemukan, fungsi akan mengembalikan null.

Fungsi remove digunakan untuk menghapus pasangan kunci-nilai dari hash table berdasarkan kunci yang diberikan. 
Fungsi ini juga menghitung hash dari kunci yang diberikan untuk menentukan bucket yang tepat. 
Kemudian, fungsi akan mencari pasangan kunci-nilai di dalam bucket yang memiliki kunci yang sama dengan kunci yang diberikan. 
Jika ditemukan, pasangan kunci-nilai tersebut akan dihapus dari bucket dan ukuran hash table akan dikurangi. Jika tidak ditemukan, fungsi tidak melakukan apa-apa.

Dalam implementasi di atas, teknik chaining digunakan untuk menangani collision. 
Setiap bucket pada array buckets berisi sebuah list yang digunakan untuk menyimpan beberapa pasangan kunci-nilai yang memiliki nilai hash yang sama. 
Dalam kasus terburuk, semua pasangan kunci-nilai akan disimpan di dalam list yang sama, namun akses ke nilai pada hash table tetap dapat dilakukan dalam waktu konstan O(1).

Hash table adalah struktur data yang sangat berguna dalam banyak aplikasi, seperti database, cache, dan indexing. 
Namun, implementasi yang buruk dari hash function atau teknik collision resolution dapat mempengaruhi kinerja hash table secara signifikan. 
Oleh karena itu, penting untuk memilih dan mengoptimalkan hash function serta teknik collision resolution yang tepat untuk kasus yang diberikan.*/
