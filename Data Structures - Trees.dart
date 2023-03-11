/* Tree adalah struktur data non-linear yang terdiri dari simpul (node) dan tepi (edge) yang menghubungkan simpul tersebut. 
Simpul yang tidak memiliki anak disebut sebagai simpul daun (leaf), sementara simpul yang memiliki anak disebut sebagai simpul dalam (internal node).

Setiap tree memiliki simpul akar (root) yang merupakan simpul teratas dari tree tersebut. 
Setiap simpul dalam memiliki tepi yang menghubungkannya dengan simpul di bawahnya, sedangkan simpul daun tidak memiliki anak.

Tree sering digunakan untuk merepresentasikan hierarki data,
seperti struktur file di dalam sistem operasi atau struktur organisasi di dalam sebuah perusahaan. 
Ada beberapa jenis tree yang umum digunakan, seperti binary tree, binary search tree, AVL tree, dan red-black tree.

Binary tree adalah jenis tree yang memiliki setiap simpul paling banyak dua anak. 
Binary search tree adalah binary tree di mana setiap simpul kiri memiliki nilai kunci yang lebih kecil daripada nilai kunci simpul induknya, 
sedangkan setiap simpul kanan memiliki nilai kunci yang lebih besar daripada nilai kunci simpul induknya. 
AVL tree dan red-black tree adalah jenis tree yang memperhatikan keseimbangan untuk memastikan bahwa operasi pada tree tetap efisien.

Contoh implementasi binary tree di Dart: */

class BinaryTreeNode {
  int value;
  BinaryTreeNode leftChild;
  BinaryTreeNode rightChild;

  BinaryTreeNode(this.value);

  void insertLeft(int value) {
    if (leftChild == null) {
      leftChild = BinaryTreeNode(value);
    } else {
      var newNode = BinaryTreeNode(value);
      newNode.leftChild = leftChild;
      leftChild = newNode;
    }
  }

  void insertRight(int value) {
    if (rightChild == null) {
      rightChild = BinaryTreeNode(value);
    } else {
      var newNode = BinaryTreeNode(value);
      newNode.rightChild = rightChild;
      rightChild = newNode;
    }
  }
}

class BinaryTree {
  BinaryTreeNode root;

  BinaryTree(this.root);
}

/* Di atas, kita membuat sebuah class BinaryTreeNode yang merepresentasikan simpul pada binary tree. 
Class ini memiliki tiga variabel: value untuk menyimpan nilai dari simpul, 
leftChild untuk menyimpan anak kiri dari simpul, dan rightChild untuk menyimpan anak kanan dari simpul. 
Class ini juga memiliki dua metode, yaitu insertLeft dan insertRight, yang digunakan untuk menambahkan anak kiri dan anak kanan ke simpul tersebut.
Kemudian, kita membuat class BinaryTree yang merepresentasikan binary tree secara keseluruhan. Class ini memiliki variabel root untuk menyimpan simpul akar dari binary tree. */