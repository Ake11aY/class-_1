//мое решение
// void main() {
//   Aver(int a, int b) {
//     List<int> lst = [];
//     int c = a;
//     for (var i = a; i <= b; i++) {
//       lst.add(c);
//       c++;
//     }
//     print(lst);
//   }

//   Aver(1, 5);
// }

//не мое решение
void main() {
  List<int> between(int a, int b) {
    return [for (int i = a; i <= b; i++) i];
  }

  print(between(1, 3));
}
