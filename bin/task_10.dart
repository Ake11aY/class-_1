// первое решение
// void main() {
//   String setAlarm(String a, String b) =>
//       (a.contains('true') && b.contains('false'))
//           ? 'setAlarm: true'
//           : 'setAlarm: false';
//   print(setAlarm('false', 'false'));
// }

//второе решение через bool
void main() {
  bool setAlarm(bool employed, bool vacation) => employed && !vacation;
  print(setAlarm(true, false));
}
