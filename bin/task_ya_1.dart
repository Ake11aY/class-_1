import 'dart:io';

void main() {
  stdout.write('Enter numbers separated by space: ');

  final input = stdin.readLineSync()!;
  final numbers = input.split(' ');

  int sum = 0;

  for (final num in numbers) {
    try {
      sum += int.parse(num);
    } catch (e) {
      print('Invalid input: $num is not a valid number.');
      return;
    }
  }

  print('Sum: $sum');
}
