//Короткое решение
void main() {
  Sheep(int a) {
    var sheeps = '';
    for (var i = 0; i < a; i++) {
      sheeps += ('${i + 1} sheep...');
      print(sheeps);
    }
  }

  var x = Sheep(3);
}

// Первое решение - подробное
//   var x = Sheep(2);
//   x.countSheep();
//   print(x.countSheep());
// }

// class Sheep {
//   late int numb;

//   Sheep(a) {
//     numb = a;
//   }

//   String countSheep() {
//     var sheeps = '';
//     for (var i = 0; i < numb; i++) {
//       sheeps += ('${i + 1} sheep...');
//     }
//     return sheeps;
//   }
// }
