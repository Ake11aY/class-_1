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

//импрув
// import 'dart:collection';
// import 'dart:io';

// void main() {
//   // Чтение данных
//   List<int?> parameters = readLineAsNullableIntList();

//   if (parameters.length == 3 &&
//       parameters[0] != null &&
//       parameters[1] != null &&
//       parameters[2] != null) {
//     int maxClients = parameters[0]!;
//     int maxPeople = parameters[1]!;
//     int maxTime = parameters[2]!;

//     // Очередь заявок
//     Queue<int> queue = Queue<int>();

//     // Обработка заявок
//     for (int i = 0; i < maxClients; i++) {
//       int? clientTime = readInt();

//       if (clientTime != null) {
//         // Обработка заявки
//         bool result = processRequest(clientTime, maxTime, queue, maxPeople);

//         // Вывод результата
//         print(result ? 'YES' : 'NO');
//       } else {
//         print('Invalid input. Please provide a valid client time.');
//       }
//     }
//   } else {
//     print('Invalid input. Please provide valid parameters.');
//   }
// }

// bool processRequest(
//     int clientTime, int maxTime, Queue<int> queue, int maxPeople) {
//   // Удаление завершивших время клиентов
//   while (queue.isNotEmpty && queue.first <= clientTime) {
//     queue.removeFirst();
//   }

//   // Проверка наличия свободных слотов
//   if (queue.length < maxPeople) {
//     // Добавление нового клиента в очередь
//     queue.add(clientTime);
//     return true;
//   } else {
//     return false;
//   }
// }

// int? readInt() {
//   try {
//     return int.tryParse(stdin.readLineSync() ?? '');
//   } catch (e) {
//     return null;
//   }
// }

// List<int?> readLineAsNullableIntList() {
//   try {
//     return stdin
//         .readLineSync()!
//         .split(' ')
//         .map((String s) => int.tryParse(s))
//         .toList();
//   } catch (e) {
//     return [];
//   }
// }

