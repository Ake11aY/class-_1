//ввод чисел (начало и конец интервала). Затем вывод всех чисел интервала
// void main() {
//   Spisok(int a, int b) {
//     List<int> lst = [];
//     if (a < b) {
//       for (int i = a; i <= b; i++) {
//         lst.add(i);
//       }
//       print(lst);
//     } else
//       print('Введите верные числа');
//   }

//   Spisok(-2, 5);
// }

void main() {
  List<int> between(int a, int b) {
    return [for (int i = a; i <= b; i++) i];
  }

  print(between(1, 3));
}
