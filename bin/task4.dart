import 'dart:ffi';

import 'package:collection/collection.dart';

//первое решение
// void main() {
//   var list = [
//     1.3,
//     -2,
//     3,
//   ];
//   var sum = list.sum;
//   print(sum); // prints 10
// }

// короткое решение
void main() {
  Func(List<int> f) {
    var sum = f.sum; //if sum == null, output=0
    print(sum);
  }

  Func([]);
}

/*
num sum(List<num> arr) {
  if(arr == null) return 0;
  num sum = 0;
  for(int i = 0;i < arr.length; i++){
    sum = sum + arr[i];
  }
  return sum;
}
*/