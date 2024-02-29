// int countRemovedNumbers(List<int> sequence) {
//   //функция принимает послед. натур. чисел
//   int count = 0;

//   while (true) {
//     int maxConsecutive = 1;
//     int currentConsecutive = 1;

//     for (int i = 1; i < sequence.length; i++) {
//       if (sequence[i] == sequence[i - 1]) {
//         currentConsecutive++;
//         if (currentConsecutive >= 3) {
//           maxConsecutive = currentConsecutive;
//         }
//       } else {
//         currentConsecutive = 1;
//       }
//     }

//     if (maxConsecutive < 3) {
//       break;
//     }

//     List<int> newSequence = [];
//     for (int i = 0; i < sequence.length; i++) {
//       if (i + maxConsecutive <= sequence.length &&
//           sequence.sublist(i, i + maxConsecutive).toSet().length == 1) {
//         count += maxConsecutive;
//         i += maxConsecutive - 1;
//       } else {
//         newSequence.add(sequence[i]);
//       }
//     }

//     sequence = newSequence;
//   }

//   return count;
// }

// void main() {
//   List<int> inputSequence = [10, 3, 3, 2, 1, 1, 1, 2, 2, 3, 3];
//   int removedCount = countRemovedNumbers(inputSequence);
//   print('Number of removed numbers: $removedCount');
// }

//2
// import 'dart:io';

// int countRemovedNumbers(List<int> sequence) {
//   int count = 0;

//   while (true) {
//     int maxConsecutive = 1;
//     int currentConsecutive = 1;

//     for (int i = 1; i < sequence.length; i++) {
//       if (sequence[i] == sequence[i - 1]) {
//         currentConsecutive++;
//         if (currentConsecutive >= 3) {
//           maxConsecutive = currentConsecutive;
//         }
//       } else {
//         currentConsecutive = 1;
//       }
//     }

//     if (maxConsecutive < 3) {
//       break;
//     }

//     List<int> newSequence = [];
//     for (int i = 0; i < sequence.length; i++) {
//       if (i + maxConsecutive <= sequence.length &&
//           sequence.sublist(i, i + maxConsecutive).toSet().length == 1) {
//         count += maxConsecutive;
//         i += maxConsecutive - 1;
//       } else {
//         newSequence.add(sequence[i]);
//       }
//     }

//     sequence = newSequence;
//   }

//   return count;
// }

// void main() {
//   print('Введите последовательность чисел через пробел:');
//   List<int> inputSequence = readLineAsIntList();
//   int removedCount = countRemovedNumbers(inputSequence);
//   print('Number of removed numbers: $removedCount');
// }

// List<int> readLineAsIntList() {
//   String input = stdin.readLineSync()!;
//   List<String> stringNumbers = input.split(' ');
//   return stringNumbers.map((String s) => int.parse(s)).toList();
// }

//3
import 'dart:io';

void main() {
  List<int>? sequence = readLineAsIntList();

  if (sequence != null) {
    int removedCount = countRemovedNumbers(sequence);
    print(removedCount);
  } else {
    print('Invalid input. Please provide a valid sequence of natural numbers.');
  }
}

List<int>? readLineAsIntList() {
  try {
    return stdin
        .readLineSync()!
        .split(' ')
        .map((String s) => int.parse(s))
        .toList();
  } catch (e) {
    return null;
  }
}

int countRemovedNumbers(List<int> sequence) {
  int count = 0;

  while (true) {
    int maxConsecutive = 1;
    int currentConsecutive = 1;

    for (int i = 1; i < sequence.length; i++) {
      if (sequence[i] == sequence[i - 1]) {
        currentConsecutive++;
        if (currentConsecutive >= 3) {
          maxConsecutive = currentConsecutive;
        }
      } else {
        currentConsecutive = 1;
      }
    }

    if (maxConsecutive < 3) {
      break;
    }

    List<int> newSequence = [];
    for (int i = 0; i < sequence.length; i++) {
      if (i + maxConsecutive <= sequence.length &&
          sequence.sublist(i, i + maxConsecutive).toSet().length == 1) {
        count += maxConsecutive;
        i += maxConsecutive - 1;
      } else {
        newSequence.add(sequence[i]);
      }
    }

    sequence = newSequence;
  }

  return count;
}



//4
// import 'dart:io';

// void main() {
//   List<int>? sequence = readLineAsIntList();

//   if (sequence != null) {
//     int removedCount = countRemovedNumbers(sequence);
//     print(removedCount);
//   } else {
//     print('Invalid input. Please provide a valid sequence of natural numbers.');
//   }
// }

// List<int>? readLineAsIntList() {
//   try {
//     return stdin
//         .readLineSync()!
//         .split(' ')
//         .map((String s) => int.parse(s))
//         .toList();
//   } catch (e) {
//     return null;
//   }
// }

// int countRemovedNumbers(List<int> sequence) {
//   int count = 0;
//   int maxConsecutive = 1;
//   int currentConsecutive = 1;

//   for (int i = 1; i < sequence.length; i++) {
//     if (sequence[i] == sequence[i - 1]) {
//       currentConsecutive++;
//     } else {
//       if (currentConsecutive >= 3) {
//         count += currentConsecutive;
//       }
//       currentConsecutive = 1;
//     }

//     if (currentConsecutive > maxConsecutive) {
//       maxConsecutive = currentConsecutive;
//     }
//   }

//   if (currentConsecutive >= 3) {
//     count += currentConsecutive;
//   }

//   return count;
// }
