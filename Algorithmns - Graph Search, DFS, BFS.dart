/*Graph Search adalah algoritma untuk mencari jalur antara dua simpul atau node dalam sebuah graf. 
Ada dua jenis algoritma Graph Search yaitu Depth-First Search (DFS) dan Breadth-First Search (BFS).

DFS adalah algoritma Graph Search yang menggunakan pendekatan rekursif. 
DFS memulai dari node awal dan mengeksplorasi setiap simpul pada satu jalur sejauh mungkin sebelum kembali dan menjelajahi jalur lain. 
Implementasi DFS dalam bahasa Dart adalah sebagai berikut:*/

class Graph {
  int vertices;
  List<List<int>> adjacencyList;

  Graph(this.vertices) {
    adjacencyList = List.generate(vertices, (i) => []);
  }

  void addEdge(int v, int w) {
    adjacencyList[v].add(w);
  }

  void dfs(int v) {
    bool visited[] = List.generate(vertices, (i) => false);
    _dfs(v, visited);
  }

  void _dfs(int v, List<bool> visited) {
    visited[v] = true;
    print(v);

    for (int i = 0; i < adjacencyList[v].length; i++) {
      int n = adjacencyList[v][i];
      if (!visited[n]) {
        _dfs(n, visited);
      }
    }
  }
}

void main() {
  Graph graph = Graph(4);

  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 2);
  graph.addEdge(2, 0);
  graph.addEdge(2, 3);
  graph.addEdge(3, 3);

  graph.dfs(2); // Output: 2 0 1 3
}

/*BFS adalah algoritma Graph Search yang menggunakan pendekatan perluas dan menjelajahi semua simpul pada level tertentu terlebih dahulu sebelum melanjutkan ke level berikutnya. 
Implement*/

/*DFS atau Depth-First Search dalam bahasa Dart: */
class Graph {
  int vertices;
  List<List<int>> adjacencyList;

  Graph(this.vertices) {
    adjacencyList = List.generate(vertices, (i) => []);
  }

  void addEdge(int v, int w) {
    adjacencyList[v].add(w);
  }

  void dfs(int v) {
    bool visited[] = List.generate(vertices, (i) => false);
    _dfs(v, visited);
  }

  void _dfs(int v, List<bool> visited) {
    visited[v] = true;
    print(v);

    for (int i = 0; i < adjacencyList[v].length; i++) {
      int n = adjacencyList[v][i];
      if (!visited[n]) {
        _dfs(n, visited);
      }
    }
  }
}

void main() {
  Graph graph = Graph(4);

  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 2);
  graph.addEdge(2, 0);
  graph.addEdge(2, 3);
  graph.addEdge(3, 3);

  graph.dfs(2); // Output: 2 0 1 3
}

// BFS atau Breadth-First Search dalam bahasa Dart:
class Graph {
  int vertices;
  List<List<int>> adjacencyList;

  Graph(this.vertices) {
    adjacencyList = List.generate(vertices, (i) => []);
  }

  void addEdge(int v, int w) {
    adjacencyList[v].add(w);
  }

  void bfs(int s) {
    List<bool> visited = List.generate(vertices, (i) => false);

    Queue<int> queue = new Queue<int>();
    visited[s] = true;
    queue.add(s);

    while (queue.isNotEmpty) {
      s = queue.removeFirst();
      print(s);

      for (int i = 0; i < adjacencyList[s].length; i++) {
        int n = adjacencyList[s][i];
        if (!visited[n]) {
          visited[n] = true;
          queue.add(n);
        }
      }
    }
  }
}

void main() {
  Graph graph = Graph(4);

  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 2);
  graph.addEdge(2, 0);
  graph.addEdge(2, 3);
  graph.addEdge(3, 3);

  graph.bfs(2); // Output: 2 0 3 1
}