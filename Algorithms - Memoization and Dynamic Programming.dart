/*Memoization dan Dynamic Programming adalah teknik-teknik yang digunakan dalam pengembangan algoritma untuk meningkatkan kinerja dan efisiensi dari solusi-solusi rekursif.

Memoization adalah teknik menyimpan hasil dari suatu fungsi yang sering dipanggil dengan input yang sama. 
Dengan menyimpan hasil dari fungsi tersebut, saat fungsi tersebut dipanggil lagi dengan input yang sama, 
hasil tersebut bisa langsung digunakan tanpa harus memanggil fungsi tersebut lagi.

Contoh implementasi memoization dalam Dart: */
Map<int, int> memo = {};

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else if (memo.containsKey(n)) {
    return memo[n];
  } else {
    int result = fibonacci(n - 1) + fibonacci(n - 2);
    memo[n] = result;
    return result;
  }
}

void main() {
  print(fibonacci(10)); // Output: 55
}

/*Dynamic Programming adalah teknik memecah suatu masalah besar menjadi submasalah yang lebih kecil dan 
kemudian menggabungkan solusi-solusi submasalah tersebut untuk mencari solusi dari masalah besar.
Contoh implementasi dynamic programming dalam Dart: */

int knapsack(List<int> values, List<int> weights, int capacity) {
  int n = values.length;
  List<List<int>> dp =
      List.generate(n + 1, (i) => List.filled(capacity + 1, 0));

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= capacity; j++) {
      if (weights[i - 1] <= j) {
        dp[i][j] =
            max(values[i - 1] + dp[i - 1][j - weights[i - 1]], dp[i - 1][j]);
      } else {
        dp[i][j] = dp[i - 1][j];
      }
    }
  }

  return dp[n][capacity];
}

void main() {
  List<int> values = [60, 100, 120];
  List<int> weights = [10, 20, 30];
  int capacity = 50;

  print(knapsack(values, weights, capacity)); // Output: 220
}
