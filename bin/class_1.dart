class Tiles {
  final String brand;
  final int size_h;
  final int size_w;
  final int price;
  final List<int> salary;

  Tiles(this.brand, this.price, this.size_h, this.size_w, this.salary) {}

  getData(Tiles tiles) {
    if (tiles.salary.isEmpty) {
      return 0;
    }
    return tiles.salary.reduce((value, element) => value += element) ~/
        tiles.salary.length;
  }

  @override
  String toString() {
    return 'brand: $brand, price: $price, size_h: $size_h, size_w: $size_w, salary $salary';
  }
}

void main() {
  final one = Tiles('go', 1000, 12, 21, [12, 3, 16]);
  print(one);
  final res = one.getData(one);
  print(res);
}
