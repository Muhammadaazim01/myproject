import 'dart:io';

List<Map<String, dynamic>> items = [];

void additem(int id, String name, int quantity, int price) {
  Map<String, dynamic> item = {
    'id': id,
    'name': name,
    'quantity': quantity,
    'price': price,
  };
  items.add(item);
  print("itemaddedsuccessfully");
}

void viewitem(int id) {
  for (var item in items) {
    if (item['id'] == id) {
      print('Item Found:');
      print('ID: ${item['id']}');
      print('Name: ${item['name']}');
      print('Quantity: ${item['quantity']}');
      print('Price: ${item['price']}');
      return;
    }
  }
  print('Item not found.');
}

void updateitem(int id, String newName, int newQuantity, int newPrice) {
  for (var item in items) {
    if (item['id'] == id) {
      item['name'] = newName;
      item['quantity'] = newQuantity;
      item['price'] = newPrice;
      print('Item updated successfully.');
      return;
    }
  }
  print('Item not found.');
}

void deleteitem(int id) {
  for (var item in items) {
    if (item['id'] == id) {
      item.remove(item);
      print('Item deleted successfully.');
      return;
    }
  }
  print('Item not found.');
}

void main() {
  print("====Welcome to my Restaurant managment app=====");
  var isopen = true;
  while (isopen) {
    print("press 1. for additem");
    print("press 2. viewitem");
    print("press 3. updateitem");
    print("press 4. deleteitem");
    print("press 5. oranykeyforexit");

    var userinput = stdin.readLineSync();
    if (userinput == "1") {
      print('Enter item id');
      int id = int.parse(stdin.readLineSync()!);
      print('Enter item name');
      String name = stdin.readLineSync()!;
      print('Enter item qunatity');
      int quantity = int.parse(stdin.readLineSync()!);
      print('Enter item price');
      int price = int.parse(stdin.readLineSync()!);
      additem(id, name, quantity, price);
    } else if (userinput == "2") {
      print('Enter item id');
      int id = int.parse(stdin.readLineSync()!);
      viewitem(id);
    } else if (userinput == "3") {
      print('Enter item id');
      int id = int.parse(stdin.readLineSync()!);
      print('Enter item name');
      String name = stdin.readLineSync()!;
      print('Enter item qunatity');
      int quantity = int.parse(stdin.readLineSync()!);
      print('Enter item price');
      int price = int.parse(stdin.readLineSync()!);
      updateitem(id, name, quantity, price);
    } else if (userinput == "4") {
      print("Plese Enter Item ID:");
      int id = int.parse(stdin.readLineSync()!);
      deleteitem(id);
    } else {
      print("program ended");
      isopen = false;
      return;
    }
  }
}
