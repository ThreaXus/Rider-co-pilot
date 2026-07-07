class DemoUser {
  final String firstName;
  final String lastName;
  final String location;

  const DemoUser({
    required this.firstName,
    required this.lastName,
    required this.location,
  });

  String get fullName => "$firstName $lastName";
}

class DemoMotorcycle {
  final String brand;
  final String model;
  final int year;
  final int mileage;
  final int rangeKm;

  const DemoMotorcycle({
    required this.brand,
    required this.model,
    required this.year,
    required this.mileage,
    required this.rangeKm,
  });

  String get fullName => "$brand $model";
}

class DemoWeather {
  final int temperature;
  final String condition;

  const DemoWeather({
    required this.temperature,
    required this.condition,
  });
}

class DemoData {
  static const user = DemoUser(
    firstName: "Patrick",
    lastName: "",
    location: "Veendam",
  );

  static const motorcycle = DemoMotorcycle(
    brand: "Yamaha",
    model: "MT-07",
    year: 2014,
    mileage: 28456,
    rangeKm: 242,
  );

  static const weather = DemoWeather(
    temperature: 22,
    condition: "Perfect riding weather",
  );
}