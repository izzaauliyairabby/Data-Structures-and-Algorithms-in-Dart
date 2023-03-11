/*Bit Manipulation adalah teknik manipulasi nilai-nilai dalam representasi biner dari bilangan bulat. Teknik ini sering digunakan dalam pemrograman rendah tingkat, sistem jaringan, dan pemrosesan sinyal.

Beberapa operasi bit manipulation yang umum digunakan adalah:

AND (&): menghasilkan 1 jika kedua bit yang dibandingkan adalah 1, dan 0 untuk kondisi lainnya.
OR (|): menghasilkan 1 jika salah satu atau kedua bit yang dibandingkan adalah 1, dan 0 untuk kondisi lainnya.
XOR (^): menghasilkan 1 jika salah satu dari kedua bit yang dibandingkan adalah 1, tapi bukan keduanya, dan 0 untuk kondisi lainnya.
NOT (~): menghasilkan nilai kebalikan dari bit yang diberikan.
Left Shift (<<): menggeser bit ke kiri sebanyak n kali.
Right Shift (>>): menggeser bit ke kanan sebanyak n kali.
Contoh implementasi bit manipulation dalam Dart: */

void main() {
  int a = 60; // 0011 1100
  int b = 13; // 0000 1101

  // AND
  int c = a & b; // 0000 1100
  print(c); // Output: 12

  // OR
  c = a | b; // 0011 1101
  print(c); // Output: 61

  // XOR
  c = a ^ b; // 0011 0001
  print(c); // Output: 49

  // NOT
  c = ~a; // 1100 0011
  print(c); // Output: -61

  // Left Shift
  c = a << 2; // 1111 0000
  print(c); // Output: 240

  // Right Shift
  c = a >> 2; // 0000 1111
  print(c); // Output: 15
}
