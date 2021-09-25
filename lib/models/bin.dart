class Bin {
  String type;
  int count;
  int capacity;
  int incorrect;
  List history;
  Map items;
  Bin(this.type, this.count, this.capacity, this.incorrect, this.history,
      this.items);
// to be used for changes from the database
  factory Bin.fromDatabase() {
    return Bin("type", 2, 3, 5, new List.empty(), new Map());
  }
}
