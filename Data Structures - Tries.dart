/*Trie, juga dikenal sebagai Prefix Tree atau Digital Tree, 
adalah struktur data tree yang digunakan untuk merepresentasikan set atau associative array di mana setiap kunci (key) adalah sebuah string. 
Struktur data ini memungkinkan pencarian, penghapusan, dan penyisipan string dalam waktu O(L), di mana L adalah panjang dari string yang dicari.

Setiap simpul pada trie merepresentasikan sebuah karakter. 
Root node pada trie biasanya merepresentasikan karakter kosong atau null. 
Setiap tepi (edge) pada trie memiliki sebuah karakter yang merepresentasikan jalur menuju simpul di bawahnya. 
Jalur dari root node menuju simpul akhir membentuk sebuah string.

Simpul pada trie terdiri dari tiga elemen utama: value untuk menyimpan nilai yang terkait dengan kunci, 
children untuk menyimpan daftar anak dari simpul tersebut, dan isEndOfWord untuk menandai apakah simpul tersebut merupakan akhir dari sebuah kunci atau bukan.

Contoh implementasi sederhana trie di Dart:*/

class TrieNode {
  String value;
  Map<String, TrieNode> children;
  bool isEndOfWord;

  TrieNode() {
    value = "";
    children = {};
    isEndOfWord = false;
  }
}

class Trie {
  TrieNode root;

  Trie() {
    root = TrieNode();
  }

  void insert(String word) {
    TrieNode currentNode = root;
    for (int i = 0; i < word.length; i++) {
      String ch = word[i];
      if (!currentNode.children.containsKey(ch)) {
        currentNode.children[ch] = TrieNode();
      }
      currentNode = currentNode.children[ch];
    }
    currentNode.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode currentNode = root;
    for (int i = 0; i < word.length; i++) {
      String ch = word[i];
      if (!currentNode.children.containsKey(ch)) {
        return false;
      }
      currentNode = currentNode.children[ch];
    }
    return currentNode.isEndOfWord;
  }

  bool startsWith(String prefix) {
    TrieNode currentNode = root;
    for (int i = 0; i < prefix.length; i++) {
      String ch = prefix[i];
      if (!currentNode.children.containsKey(ch)) {
        return false;
      }
      currentNode = currentNode.children[ch];
    }
    return true;
  }
}

/*Di atas, kita membuat class TrieNode yang merepresentasikan simpul pada trie. 
Class ini memiliki tiga variabel: value untuk menyimpan nilai yang terkait dengan kunci, 
children untuk menyimpan daftar anak dari simpul tersebut, dan isEndOfWord untuk menandai apakah simpul tersebut merupakan akhir dari sebuah kunci atau bukan.

Kemudian, kita membuat class Trie yang merepresentasikan trie secara keseluruhan. 
Class ini memiliki variabel root untuk menyimpan simpul akar dari trie. 
Class ini juga memiliki tiga metode, yaitu insert, search, dan startsWith, 
yang digunakan untuk menyisipkan kunci ke trie, mencari kunci pada trie, dan mencari kunci yang dimulai dengan suatu string pada trie. */

