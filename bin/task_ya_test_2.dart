// // bool hasMobileConnection(List<Tower> towers, Point start, Point end) {
// //   for (var tower in towers) {
// //     if (tower.covers(start) && tower.covers(end)) {
// //       return true;
// //     }
// //   }
// //   return false;
// // }

// // class Point {
// //   final int x;
// //   final int y;

// //   Point(this.x, this.y);
// // }

// // class Tower {
// //   final Point location;
// //   final int radius;

// //   Tower(this.location, this.radius);

// //   bool covers(Point point) {
// //     int dx = (location.x - point.x).abs();
// //     int dy = (location.y - point.y).abs();

// //     return dx <= radius && dy <= radius;
// //   }
// // }

// // void main() {
// //   // Пример использования
// //   List<Tower> towers = [
// //     Tower(Point(1, 1), 1),
// //     Tower(Point(4, 4), 2),
// //     Tower(Point(7, 1), 1),
// //     // Добавьте другие вышки по мере необходимости
// //   ];

// //   Point startPoint = Point(0, 0);
// //   Point endPoint = Point(8, 0);

// //   bool canCommunicate = hasMobileConnection(towers, startPoint, endPoint);

// //   if (canCommunicate) {
// //     print('Маршрут с сотовой связью доступен.');
// //   } else {
// //     print('Маршрут с сотовой связью не доступен.');
// //   }
// // }

// // import 'dart:io';

// // void main() {
// //   // Чтение количества вышек
// //   int numberOfTowers = int.parse(stdin.readLineSync()!);

// //   // Список для хранения вышек
// //   List<Tower> towers = [];

// //   // Чтение данных сотовых вышек
// //   for (int i = 0; i < numberOfTowers; i++) {
// //     List<int> towerData = stdin
// //         .readLineSync()!
// //         .split(' ')
// //         .map((String s) => int.parse(s))
// //         .toList();

// //     // Создание вышки и добавление в список
// //     towers.add(Tower(Point(towerData[0], towerData[1]), towerData[2]));
// //   }

// //   // Задание начальной и конечной точек
// //   print('Введите координаты начальной точки:');
// //   Point startPoint = readPoint();

// //   print('Введите координаты конечной точки:');
// //   Point endPoint = readPoint();

// //   // Проверка наличия маршрута с сотовой связью
// //   bool canCommunicate = hasMobileConnection(towers, startPoint, endPoint);

// //   // Вывод результата
// //   if (canCommunicate) {
// //     print('Маршрут с сотовой связью доступен.');
// //   } else {
// //     print('Маршрут с сотовой связью не доступен.');
// //   }
// // }

// // Point readPoint() {
// //   print('Введите координаты (x y):');
// //   List<int> coordinates =
// //       stdin.readLineSync()!.split(' ').map((String s) => int.parse(s)).toList();

// //   return Point(coordinates[0], coordinates[1]);
// // }

// // class Point {
// //   final int x;
// //   final int y;

// //   Point(this.x, this.y);
// // }

// // class Tower {
// //   final Point location;
// //   final int radius;

// //   Tower(this.location, this.radius);

// //   bool covers(Point point) {
// //     int dx = (location.x - point.x).abs();
// //     int dy = (location.y - point.y).abs();

// //     return dx <= radius && dy <= radius;
// //   }
// // }

// // bool hasMobileConnection(List<Tower> towers, Point start, Point end) {
// //   for (var tower in towers) {
// //     if (tower.covers(start) && tower.covers(end)) {
// //       return true;
// //     }
// //   }
// //   return false;
// // }

// 2
// import 'dart:io';

// void main() {
//   // Чтение количества вышек
//   int numberOfTowers = int.parse(stdin.readLineSync()!);

//   // Список для хранения вышек
//   List<Tower> towers = [];

//   // Чтение данных сотовых вышек
//   for (int i = 0; i < numberOfTowers; i++) {
//     List<int> towerData = stdin
//         .readLineSync()!
//         .split(' ')
//         .map((String s) => int.parse(s))
//         .toList();

//     // Создание вышки и добавление в список
//     towers.add(Tower(Point(towerData[0], towerData[1]), towerData[2]));
//   }

//   // Задание начальной и конечной точек
//   print('Введите координаты начальной точки:');
//   Point startPoint = readPoint();

//   print('Введите координаты конечной точки:');
//   Point endPoint = readPoint();

//   // Проверка наличия маршрута с сотовой связью
//   bool canCommunicate = hasMobileConnection(towers, startPoint, endPoint);

//   // Вывод результата
//   if (canCommunicate) {
//     print('Маршрут с сотовой связью доступен.');
//   } else {
//     print('Маршрут с сотовой связью не доступен.');
//   }
// }

// Point readPoint() {
//   print('Введите координаты (x y):');
//   List<int> coordinates =
//       stdin.readLineSync()!.split(' ').map((String s) => int.parse(s)).toList();

//   return Point(coordinates[0], coordinates[1]);
// }

// class Point {
//   final int x;
//   final int y;

//   Point(this.x, this.y);
// }

// class Tower {
//   final Point location;
//   final int radius;

//   Tower(this.location, this.radius);

//   bool covers(Point point) {
//     int dx = (location.x - point.x).abs();
//     int dy = (location.y - point.y).abs();

//     return dx <= radius && dy <= radius;
//   }
// }

// bool hasMobileConnection(List<Tower> towers, Point start, Point end) {
//   for (var tower in towers) {
//     if (tower.covers(start) && tower.covers(end)) {
//       return true;
//     }
//   }
//   return false;
// }

//2.1
// import 'dart:io';

// void main() {
//   // Чтение количества вышек
//   int? numberOfTowers = int.tryParse(stdin.readLineSync() ?? '');

//   if (numberOfTowers != null) {
//     // Список для хранения вышек
//     List<Tower> towers = [];

//     // Чтение данных сотовых вышек
//     for (int i = 0; i < numberOfTowers; i++) {
//       List<int> towerData = readLineAsIntList();

//       // Создание вышки и добавление в список
//       towers.add(Tower(Point(towerData[0], towerData[1]), towerData[2]));
//     }

//     // Задание начальной и конечной точек
//     print('Введите координаты начальной точки:');
//     Point startPoint = readPoint();

//     print('Введите координаты конечной точки:');
//     Point endPoint = readPoint();

//     // Проверка наличия маршрута с сотовой связью
//     bool canCommunicate = hasMobileConnection(towers, startPoint, endPoint);

//     // Вывод результата
//     if (canCommunicate) {
//       print('Маршрут с сотовой связью доступен.');
//     } else {
//       print('Маршрут с сотовой связью не доступен.');
//     }
//   } else {
//     print('Invalid input. Please provide a valid number of towers.');
//   }
// }

// List<int> readLineAsIntList() {
//   try {
//     return stdin
//         .readLineSync()!
//         .split(' ')
//         .map((String s) => int.parse(s))
//         .toList();
//   } catch (e) {
//     return [];
//   }
// }

// Point readPoint() {
//   print('Введите координаты (x y):');
//   List<int> coordinates = readLineAsIntList();

//   if (coordinates.length == 2) {
//     return Point(coordinates[0], coordinates[1]);
//   } else {
//     print('Invalid input. Please provide valid coordinates.');
//     return Point(0, 0);
//   }
// }

// class Point {
//   final int x;
//   final int y;

//   Point(this.x, this.y);
// }

// class Tower {
//   final Point location;
//   final int radius;

//   Tower(this.location, this.radius);

//   bool covers(Point point) {
//     int dx = (location.x - point.x).abs();
//     int dy = (location.y - point.y).abs();

//     return dx <= radius && dy <= radius;
//   }
// }

// bool hasMobileConnection(List<Tower> towers, Point start, Point end) {
//   for (var tower in towers) {
//     if (tower.covers(start) && tower.covers(end)) {
//       return true;
//     }
//   }
//   return false;
// }

//2.2
// import 'dart:io';

// void main() {
//   // Чтение количества вышек
//   int? numberOfTowers = readInt();

//   if (numberOfTowers != null) {
//     // Список для хранения вышек
//     List<Tower> towers = [];

//     // Чтение данных сотовых вышек
//     for (int i = 0; i < numberOfTowers; i++) {
//       List<int> towerData = readLineAsIntList();

//       if (towerData.length == 3) {
//         // Создание вышки и добавление в список
//         Tower? tower = createTower(towerData);

//         if (tower != null) {
//           towers.add(tower);
//         } else {
//           print('Invalid input. Please provide valid tower data.');
//           return;
//         }
//       } else {
//         print('Invalid input. Please provide valid tower data.');
//         return;
//       }
//     }

//     // Задание начальной и конечной точек
//     print('Введите координаты начальной точки:');
//     Point? startPoint = readPoint();

//     // Проверка на null для startPoint
//     if (startPoint != null) {
//       print('Введите координаты конечной точки:');
//       Point? endPoint = readPoint();

//       // Проверка на null для endPoint
//       if (endPoint != null) {
//         // Проверка наличия маршрута с сотовой связью
//         bool? canCommunicate =
//             hasMobileConnection(towers, startPoint, endPoint);

//         // Вывод результата
//         if (canCommunicate != null) {
//           print(canCommunicate ? '1' : '0');
//         } else {
//           print(
//               'Error in determining mobile connection. Please check your input.');
//         }
//       } else {
//         print(
//             'Invalid input. Please provide valid coordinates for the end point.');
//       }
//     } else {
//       print(
//           'Invalid input. Please provide valid coordinates for the start point.');
//     }
//   } else {
//     print('Invalid input. Please provide a valid number of towers.');
//   }
// }

// int? readInt() {
//   try {
//     return int.tryParse(stdin.readLineSync() ?? '');
//   } catch (e) {
//     return null;
//   }
// }

// List<int> readLineAsIntList() {
//   try {
//     return stdin
//         .readLineSync()!
//         .split(' ')
//         .map((String s) => int.tryParse(s) ?? 0)
//         .toList();
//   } catch (e) {
//     return [];
//   }
// }

// Point? readPoint() {
//   print('Введите координаты (x y):');
//   List<int> coordinates = readLineAsIntList();

//   // Проверка на null для coordinates
//   if (coordinates.length == 2) {
//     return Point(coordinates[0], coordinates[1]);
//   } else {
//     print('Invalid input. Please provide valid coordinates.');
//     return null;
//   }
// }

// Tower? createTower(List<int> towerData) {
//   int? x = towerData.length > 0 ? towerData[0] : null;
//   int? y = towerData.length > 1 ? towerData[1] : null;
//   int? radius = towerData.length > 2 ? towerData[2] : null;

//   // Проверка на null для x, y и radius
//   if (x != null && y != null && radius != null) {
//     return Tower(Point(x, y), radius);
//   } else {
//     return null;
//   }
// }

// class Point {
//   final int x;
//   final int y;

//   Point(this.x, this.y);
// }

// class Tower {
//   final Point location;
//   final int radius;

//   Tower(this.location, this.radius);

//   bool covers(Point point) {
//     int dx = (location.x - point.x).abs();
//     int dy = (location.y - point.y).abs();

//     return dx <= radius && dy <= radius;
//   }
// }

// bool? hasMobileConnection(List<Tower> towers, Point start, Point end) {
//   for (var tower in towers) {
//     if (tower.covers(start) && tower.covers(end)) {
//       return true;
//     }
//   }
//   return false;
// }

//3
// import 'dart:io';

// void main() {
//   // Чтение количества вышек
//   int numberOfTowers = int.parse(stdin.readLineSync()!);

//   // Список для хранения вышек
//   List<Tower> towers = [];

//   // Чтение данных сотовых вышек
//   for (int i = 0; i < numberOfTowers; i++) {
//     List<int> towerData = readLineAsIntList();
//     towers.add(Tower(Point(towerData[0], towerData[1]), towerData[2]));
//   }

//   // Задание начальной точки маршрута
//   Point start = readPoint();

//   // Задание конечной точки маршрута
//   Point end = readPoint();

//   // Проверка возможности проложить маршрут
//   bool canCreateRoute = canCreateRouteWithCommunication(towers, start, end);

//   // Вывод результата
//   print(canCreateRoute ? '1' : '0');
// }

// List<int> readLineAsIntList() {
//   return stdin
//       .readLineSync()!
//       .split(' ')
//       .map((String s) => int.parse(s))
//       .toList();
// }

// Point readPoint() {
//   List<int> coordinates = readLineAsIntList();
//   return Point(coordinates[0], coordinates[1]);
// }

// class Point {
//   final int x;
//   final int y;

//   Point(this.x, this.y);
// }

// class Tower {
//   final Point location;
//   final int radius;

//   Tower(this.location, this.radius);

//   bool covers(Point point) {
//     int dx = (location.x - point.x).abs();
//     int dy = (location.y - point.y).abs();

//     return dx <= radius && dy <= radius;
//   }
// }

// bool canCreateRouteWithCommunication(
//     List<Tower> towers, Point start, Point end) {
//   for (var tower in towers) {
//     if (tower.covers(start) && tower.covers(end)) {
//       return true;
//     }
//   }
//   return false;
// }

//везде null
import 'dart:io';

void main() {
  // Чтение количества вышек
  int? numberOfTowers = readInt();

  if (numberOfTowers != null) {
    // Список для хранения вышек
    List<Tower> towers = [];

    // Чтение данных сотовых вышек
    for (int i = 0; i < numberOfTowers; i++) {
      List<int> towerData = readLineAsIntList();

      if (towerData.length == 3) {
        // Создание вышки и добавление в список
        Tower? tower = createTower(towerData);

        if (tower != null) {
          towers.add(tower);
        } else {
          print('Invalid input. Please provide valid tower data.');
          return;
        }
      } else {
        print('Invalid input. Please provide valid tower data.');
        return;
      }
    }

    // Задание начальной и конечной точек
    print('Введите координаты начальной точки:');
    Point? startPoint = readPoint();

    // Проверка на null для startPoint
    if (startPoint != null) {
      print('Введите координаты конечной точки:');
      Point? endPoint = readPoint();

      // Проверка на null для endPoint
      if (endPoint != null) {
        // Проверка наличия маршрута с сотовой связью
        bool? canCommunicate =
            hasMobileConnection(towers, startPoint, endPoint);

        // Вывод результата
        if (canCommunicate != null) {
          print(canCommunicate ? '1' : '0');
        } else {
          print(
              'Error in determining mobile connection. Please check your input.');
        }
      } else {
        print(
            'Invalid input. Please provide valid coordinates for the end point.');
      }
    } else {
      print(
          'Invalid input. Please provide valid coordinates for the start point.');
    }
  } else {
    print('Invalid input. Please provide a valid number of towers.');
  }
}

int? readInt() {
  try {
    return int.tryParse(stdin.readLineSync() ?? '');
  } catch (e) {
    return null;
  }
}

List<int> readLineAsIntList() {
  try {
    return stdin
        .readLineSync()!
        .split(' ')
        .map((String s) => int.tryParse(s) ?? 0)
        .toList();
  } catch (e) {
    return [];
  }
}

Point? readPoint() {
  print('Введите координаты (x y):');
  List<int> coordinates = readLineAsIntList();

  // Проверка на null для coordinates
  if (coordinates.length == 2) {
    return Point(coordinates[0], coordinates[1]);
  } else {
    print('Invalid input. Please provide valid coordinates.');
    return null;
  }
}

Tower? createTower(List<int> towerData) {
  int? x = towerData.length > 0 ? towerData[0] : null;
  int? y = towerData.length > 1 ? towerData[1] : null;
  int? radius = towerData.length > 2 ? towerData[2] : null;

  // Проверка на null для x, y и radius
  if (x != null && y != null && radius != null) {
    return Tower(Point(x, y), radius);
  } else {
    return null;
  }
}

class Point {
  final int x;
  final int y;

  Point(this.x, this.y);
}

class Tower {
  final Point location;
  final int radius;

  Tower(this.location, this.radius);

  bool covers(Point point) {
    int dx = (location.x - point.x).abs();
    int dy = (location.y - point.y).abs();

    return dx <= radius && dy <= radius;
  }
}

bool? hasMobileConnection(List<Tower> towers, Point start, Point end) {
  for (var tower in towers) {
    if (tower.covers(start) && tower.covers(end)) {
      return true;
    }
  }
  return false;
}
