void main() {
  List<int> invert(List<int> arr) {
    return arr.map((e) => -e).toList();
  }

  print(invert([1, -2, 3, -2, -3]));
}


/*
List<int> invert(List<int> arr) => [for(var i in arr) -i];
*/