import 'package:test/test.dart';
// длинное решение
// void main() {
//   var x = Grade(90, 89, 100);
//   x.diary();
//   var f = Grade(80, 60, 70);
//   f.diary();
//   var l = Grade(50, 50, 50);
//   l.diary();
//   var m = Grade(30, 39, 82);
//   m.diary();
// }

// class Grade {
//   late int a;
//   late int b;
//   late int c;

//   Grade(this.a, this.b, this.c);

//   dynamic diary() {
//     double aver;
//     aver = (a + b + c) / 3; // можео и через ~, но захотел через double.round
//     if (90 <= aver && aver <= 100) {
//       print('Результат: ${aver.round()} = A');
//     } else if (80 <= aver && aver < 90) {
//       print('Результат: ${aver.round()} = B');
//     } else if (70 <= aver && aver < 80) {
//       print('Результат: ${aver.round()} = C');
//     } else if (60 <= aver && aver < 70) {
//       print('Результат: ${aver.round()} = D');
//     } else if (0 <= aver && aver < 60) {
//       print('Результат: ${aver.round()} = F');
//     }
//   }
// }

// короткое решение
void main() {
  String getGrade(int a, int b, int c) {
    var avg = (a + b + c) / 3;

    String result = avg >= 90 && avg <= 100
        ? "A"
        : avg >= 80 && avg < 90
            ? "B"
            : avg >= 70 && avg < 80
                ? "C"
                : avg >= 60 && avg < 70
                    ? "D"
                    : "F";

    return result;
  }

  print(getGrade(1, 2, 3));
}
