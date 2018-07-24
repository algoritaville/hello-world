// Test dart file.

main() {
  var jim_carrey = new Person("Jim", "Carrey", new DateTime(1962, 1, 17));
  print(jim_carrey.getName());

  var kristen_wiig = new Person("Kristen", "Wiig", new DateTime(1973, 8, 22));
  print(kristen_wiig.getName());

  var bernadette_peters = new Person("Bernadette", "Peters", new DateTime(1948, 2, 28));
  print(bernadette_peters.getName());

  var mel_brooks = new Person("Mel", "Brooks", new DateTime(1928, 6, 28));
  print(mel_brooks.getName());
}

class Person {
  String firstName, lastName;
  DateTime birthday;
  double age;

  Person(this.firstName, this.lastName, this.birthday) {
    var now = new DateTime.now();
    this.age = now.difference(this.birthday).inSeconds / 3600 / 24 / 365;
  }

  String getName() => "Hello, I am ${this.firstName} ${this.lastName}, and I am ${this.age.round()} years old.";
}