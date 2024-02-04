// первое решение
// void main() {
//   Sperm(String check) {
//     return check == 'XY' ? "У тебя дочь - $check" : "У тебя сын - $check";
//   }

//   print(Sperm('XX'));
// }

// второе решение  c .contains
void main() {
  Sperm(String check) =>
      check.contains('Y') ? "У тебя дочь - $check" : "У тебя сын - $check";
  print(Sperm('XY'));
}
