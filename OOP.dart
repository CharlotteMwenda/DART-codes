import 'dart:io';

abstract class Vehicle {
  void accelerate();
  void brake();
}

class Car implements Vehicle {
  @override
  void accelerate() {
    print('Car is accelerating');
  }

  @override
  void brake() {
    print('Car is braking');
  }
}

class VehicleWithFileData {
  String make;
  String model;

  VehicleWithFileData(this.make, this.model);

  static VehicleWithFileData fromFile(String filename) {
    List<String> data = File(filename).readAsLinesSync();
    return VehicleWithFileData(data[0], data[1]);
  }
}

class Truck extends VehicleWithFileData implements Vehicle {
  int cargoCapacity;

  Truck(String make, String model, this.cargoCapacity) : super(make, model);

  @override
  void accelerate() {
    print('Truck is accelerating');
  }

  @override
  void brake() {
    print('Truck is braking');
  }

  void displayCargo() {
    print('Cargo capacity: $cargoCapacity units');
    print('Loading cargo...');
    for (int i = 0; i < cargoCapacity; i++) {
      print('Unit ${i + 1} loaded');
    }
    print('Cargo loaded successfully');
  }
}

void main() {
  // Create instances of classes
  Car myCar = Car();
  Truck myTruck = Truck.fromFile('truck_data.txt');

  // Demonstrate overriding of inherited method
  myCar.accelerate();
  myTruck.accelerate();

  // Demonstrate initialization from a file
  print('Truck make: ${myTruck.make}');
  print('Truck model: ${myTruck.model}');

  // Demonstrate a loop
  myTruck.displayCargo();
}