void main() {
  var bob = User('Bob', 40, true, ['Football', 'Skate']);
  //..name = 'Bob'
  // ..age = 40;
  bob.info();

  var alex = User('Alex', 14, false, ['Basketball']);
  alex.info();
}

class User {
  late String name;
  late int age;
  late bool isHappy;
  late List<String> hobbies;

  User(name, [age, isHappy, hobbies]) {
    this.name = name;
    this.age = age;
    this.isHappy = isHappy;
    this.hobbies = hobbies;
  }

  void info() {
    var happy = isHappy ? 'happy' : 'not happy';
    print('User $name is $age years old. He is $happy. His hobbies:');
    for (var el in hobbies) {
      print(el);
    }
  }
}
