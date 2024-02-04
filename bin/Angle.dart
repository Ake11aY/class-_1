// // длинное решение
// void main() {
//   var first = Angles(60, 30);
//   first.otherAngle();
// }

// class Angles {
//   late int a; //создаем новый класс, в котором указываем переменные
//   late int b;

//   Angles(a, b) {
//     this.a = a;
//     this.b = b;
//   }

//   void otherAngle() {
//     // создаем функцию, которая будет считать третий угол
//     int c = (180 - (a + b));
//     print(c);
//   }
// }

// короткое решение
void main() {
  Angles(int a, int b) {
    int c = (180 - (a + b));
    print(c);
  }

  Angles(29, 65);
}
