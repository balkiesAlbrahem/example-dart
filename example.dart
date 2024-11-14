class Laptop {
  final int id;
  final String name;
  final int RAM;
  Laptop(this.id, this.name, this.RAM);
}

class House {
  final int id;
  final String name;
  final int price;
  House(this.id, this.name, this.price);
}

enum Gender {
  male,
  female,
  other,
}

class Animal {
  final int id;
  final String name;
  final String color;
  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  final String sound;
  Cat(int id, String name, String color, this.sound) : super(id, name, color);
}

void main() {
  //object of laptop
  Laptop l1 = Laptop(1, "lenovo", 16);
  Laptop l2 = Laptop(2, "Mac", 32);
  Laptop l3 = Laptop(3, "HP", 20);

  ///print details of objects
  print(" ----laptop---");
  print("${l1.id} ${l1.name} have ${l1.RAM} Ram");
  print("${l2.id} ${l2.name} have ${l2.RAM} Ram");
  print("${l3.id} ${l3.name} have ${l3.RAM} Ram");
  //object of House
  House h1 = House(1, "rock", 200);
  House h2 = House(2, "fra", 230);
  House h3 = House(3, "popy", 210);
  //list of object house
  List<House> listofHouse = [];
  listofHouse.add(h1);
  listofHouse.add(h2);
  listofHouse.add(h3);
  //print details
  print(" ----HOUSE-----");
  for (int i = 0; i < listofHouse.length; i++) {
    print(
        " * ${listofHouse[i].id} - ${listofHouse[i].name}  its price ${listofHouse[i].price}");
  }
  //enum gender
  Gender g1 = Gender.male;
  Gender g2 = Gender.female;
  Gender g3 = Gender.other;
  print("${g1}  _ " + " ${g2}  _ " + " ${g3} ");
  // Cat
  Cat cat = Cat(1, "fefa", "black", "meo");
  print(
      " ** ${cat.id}  name : ${cat.name}  color : ${cat.color}  sound : ${cat.sound}");
}
