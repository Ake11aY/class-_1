// void main() {
//   int N = 8;
//   int S = 2;
//   int T = 3;

//   List<int> times = [1, 3, 5, 1, 8, 5, 0, 6];

//   List<int> slots = [];

//   for (int i = 0; i < N; i++) {
//     int time = times[i];

//     bool foundSlot = false;
//     for (int j = 0; j < slots.length; j++) {
//       if (slots[j] <= time) {
//         slots[j] = time + T;
//         foundSlot = true;
//         print('YES');
//         break;
//       }
//     }

//     if (!foundSlot) {
//       if (slots.length < S) {
//         slots.add(time + T);
//         print('YES');
//       } else {
//         print('NO');
//       }
//     }
//   }
// }

// import 'dart:io';

// void main() {
//   int n = int.parse(stdin.readLineSync()!);
//   Map<String, int> d = {};

//   void appendRec() {
//     int count = int.parse(reqSplit[2]);
//     if (count > 0) {
//       String word = reqSplit[1];
//       if (d.containsKey(word)) {
//         d[word] = d[word]! + count;
//       } else {
//         d[word] = count;
//       }
//     }
//   }

//   void getReq() {
//     String prefix = reqSplit[1];
//     Map<String, int> tempD = {};
//     d.forEach((key, value) {
//       if (key.startsWith(prefix)) {
//         tempD[key] = value;
//       }
//     });
//     int maxV = 1;
//     String? maxI;

//     if (tempD.isEmpty) {
//       print(prefix);
//       return;
//     }

//     tempD.forEach((key, value) {
//       if (value > maxV) {
//         maxV = value;
//         maxI = key;
//       } else if (value == maxV) {
//         if (key!.compareTo(maxI!) < 0) {
//           maxV = value;
//           maxI = key;
//         }
//       }
//     });

//     print(maxI);
//   }

//   for (int i = 0; i < n; i++) {
//     String req = stdin.readLineSync()!;
//     List<String> reqSplit = req.split(" ");
//     String reqType = reqSplit[0];

//     if (reqType == "+") {
//       appendRec();
//     }

//     if (reqType == "?") {
//       getReq();
//     }
//   }
// }