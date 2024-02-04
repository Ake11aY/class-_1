//первое решение
// void main() {
//   Sentences(List<String> words) {
//     String a = '';
//     for (var i = 0; i < words.length; i++) {
//       if (i == 0) {
//         a += words[i];
//       } else {
//         a += (' ' + words[i]);
//       }
//     }
//     print(a);
//   }
//   Sentences(['hello', 'world', 'this', 'is', 'great']);
// }

//краткая запись первого
// void main() {
//   Sentences(List<String> words) {
//     String a = '';
//     for (var i = 0; i < words.length; i++) {
//       i == 0 ? a += words[i] : a += (' ' + words[i]);
//     }
//     print(a);
//   }
//   Sentences(['Hello', 'word', 'boom']);
// }

//второе решение
void main() {
  String Smash(words) {
    return words.join(' ');
  }

  print(Smash(['hi', 'ho', 'hey']));
}
