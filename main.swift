enum Dish: String {
    case fish, chiken, vegetables, fruits
}

enum OrderStatus: String {
  case pending = "Ожидается"
  case inProgress = "В обработке"
  case shipped = "Отправлен"
  case delivered = "Доставлен"
  case canceled = "Отменен"
}

enum FileType: Int {
  case image = 1, video, document, audio
}

enum ClothingSize: Int {
  case small = 0
  case medium = 1
  case large = 2
  case extraLarge = 3
}

enum Gender {
    case male, female
}

enum AgeCategory {
    case young, adult, senior
}

enum Experience {
    case trainee, junior, middle, senior, lead
}

struct Employee {
    var Name: String
    var Gender: Gender
    var AgeCategory: AgeCategory
    var Experience: Experience
}

enum RainbowColor: Int {
    case red = 1, orange, yellow, green, blue, indigo, violet
}

enum VehicleType: String {
  case car, motorcycle, bicycle, bus, train, airplane, ship
}

enum Color: String {
  case red, blue, green, black, white, silver, gray, yellow
}

func printVehicleColors() {
  let vehicles = [VehicleType.car, VehicleType.motorcycle, VehicleType.bicycle, VehicleType.bus, VehicleType.train, VehicleType.airplane, VehicleType.ship].shuffled()
  let colors = [Color.red, Color.blue, Color.green, Color.black, Color.white, Color.silver, Color.gray, Color.yellow].shuffled()
  
  for i in 0..<min(vehicles.count, colors.count) {
    print("\(vehicles[i].rawValue) is often \(colors[i].rawValue)")
  }
}

printVehicleColors()

print()

enum Score: String {
  case excellent = "Отлично"
  case good = "Хорошо"
  case satisfactory = "Удовлетворительно"
  case bad = "Плохо"
  case failed = "Неудовлетворительно"
}

func getNumericalGrade(score: Score) {
  switch score {
  case .excellent:
    print("5")
  case .good:
    print("4")
  case .satisfactory:
    print("3")
  case .bad:
    print("2")
  case .failed:
    print("1")
  }
}

getNumericalGrade(score: Score.excellent)
getNumericalGrade(score: Score.good)
getNumericalGrade(score: Score.satisfactory)
getNumericalGrade(score: Score.bad)
getNumericalGrade(score: Score.failed)

print()

enum Car: String {
  case toyotaCamry
  case hondaCivic
  case bmw3Series
  case mercedesCClass
  case audiA4
}

func printCarsInGarage(cars: [Car]) {
  print("В гараже:")
  for car in cars {
    print(" - \(car.rawValue)")
  }
}

let carsInGarage = [Car.toyotaCamry, Car.hondaCivic, Car.bmw3Series]
printCarsInGarage(cars: carsInGarage)
