// не очень красивое решение (первое решение)
// находит наибольшее число при использовании разных операторов
// void main() {
//   Max(int a, int b, int c) {
//     if ((1 <= a && 1 <= b && 1 <= c) || (a <= 10 && b <= 10 && c <= 10)) {
//       int max1 = a + b + c;
//       int max2 = a * b * c;
//       int max3 = a * b * c;
//       int max4 = (a + b) * c;
//       int max5 = a * (b + c);
//       int maximum = max1;
//       if (maximum < max2) {
//         maximum = max2;
//         print('$maximum 1');
//       } else if (maximum < max3) {
//         maximum = max3;
//         print('$maximum 2');
//       } else if (maximum < max4) {
//         maximum = max4;
//         print('$maximum 3');
//       } else if (maximum < max5) {
//         maximum = max5;
//         print('$maximum 4');
//       } else if (maximum >= max1) {
//         print(maximum);
//       } else
//         print('Не соответствует условию');
//     }
//   }

//   Max(9, 1, 1);
// }

// второе решение через создание массива и поиска в нем наибольшего числа
// void main() {
//   Max(int a, int b, int c) {
//     if ((1 <= a && 1 <= b && 1 <= c) || (a <= 10 && b <= 10 && c <= 10)) {
//       int min;
//       List<int> lst = [];
//       int max1 = a + b + c;
//       lst.add(max1);
//       int max2 = a * b * c;
//       lst.add(max2);
//       int max3 = a * b * c;
//       lst.add(max3);
//       int max4 = (a + b) * c;
//       lst.add(max4);
//       int max5 = a * (b + c);
//       lst.add(max5);
//       print(lst);
//       min = lst[0];
//       int maximum = min;
//       for (var i = 0; i < lst.length; i++) {
//         if (lst[i] > maximum) maximum = lst[i];
//         if (lst[i] < min) min = lst[i];
//       }
//       print(maximum);
//     }
//   }
//   Max(1, 2, 3);
// }

// Третье решение - короткое
import "dart:math";

void main() {
  int expressionMatter(a, b, c) {
    List<int> list = [
      a * (b + c),
      a * b * c,
      a + b * c,
      (a + b) * c,
      a + b + c
    ];
    return list.reduce(max); //метод reducce
  }

  print(expressionMatter(1, 2, 3));
}
