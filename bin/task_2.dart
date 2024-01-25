import 'package:test/test.dart';

void main() {
  var x = Sheep(2);
  x.countSheep();
  print(x.countSheep());
}

class Sheep {
  late int numb;

  Sheep(a) {
    numb = a;
  }

  String countSheep() {
    var sheeps = '';
    for (var i = 0; i < numb; i++) {
      sheeps += ('${i + 1} sheep...');
    }
    return sheeps;
  }
}
