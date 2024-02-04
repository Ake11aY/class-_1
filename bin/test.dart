// чзх, плохой код и не работает
// void main() {
//   var x = list([1, 2, 3, 4]);
//   x.reverseList;
//   print(x.reverseList);
// }

// // ignore: camel_case_types
// class list {
//   late var numb = [];

//   // ignore: non_constant_identifier_names
//   list(numb) {
//     numb = [];
//   }

//   List<int> reverseList(List<int> list) {
//     List<int> reversd = [];
//     for (var i = list.length - 1; i >= 0; i--) {
//       reversd.add(list[i]);
//     }
//     return reversd;
//   }
// }

//короткое решение
void main() {
  Rev(List<int> f) {
    List<int> reversed = [];
    for (var i = f.length - 1; i >= 0; i--) {
      reversed.add(f[i]);
    }
    return reversed;
  }

  print(Rev([1, 2, 3]));
}
