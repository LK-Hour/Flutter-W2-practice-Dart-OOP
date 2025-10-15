//Origin code
enum Skill { FLUTTER, DART, OTHER }

// Address class with street, city, and zipCode attributes
class Address {
  final String street;
  final String city;
  final String zipCode;

  const Address({
    required this.street,
    required this.city,
    required this.zipCode,
  });

  @override
  String toString() => '$street, $city $zipCode';
}

class Employee {
  // Private attributes
  final String _name;
  final double _baseSalary;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;

  // Constructor
  Employee(
    this._name,
    this._baseSalary,
    this._skills,
    this._address,
    this._yearsOfExperience,
  );

  // Named constructor for mobile developer
  Employee.mobileDeveloper(
    String name,
    double baseSalary,
    Address address,
    int yearsOfExperience,
  ) : _name = name,
      _baseSalary = baseSalary,
      _skills = [Skill.FLUTTER, Skill.DART],
      _address = address,
      _yearsOfExperience = yearsOfExperience;

  // Named constructor for web developer
  Employee.webDeveloper(
    String name,
    double baseSalary,
    Address address,
    int yearsOfExperience,
  ) : _name = name,
      _baseSalary = baseSalary,
      _skills = [Skill.DART, Skill.OTHER],
      _address = address,
      _yearsOfExperience = yearsOfExperience;

  // Getters
  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => List.unmodifiable(_skills);
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  // Method to compute salary
  double computeSalary() {
    double salary = _baseSalary;

    // Add experience bonus: $2,000 per year
    salary += _yearsOfExperience * 2000;

    // Add skill bonuses
    for (var skill in _skills) {
      switch (skill) {
        case Skill.FLUTTER:
          salary += 5000;
          break;
        case Skill.DART:
          salary += 3000;
          break;
        case Skill.OTHER:
          salary += 1000;
          break;
      }
    }

    return salary;
  }

  void printDetails() {
    print('Employee: $_name');
    print('Base Salary: \$${_baseSalary.toInt()}');
    print('Years of Experience: $_yearsOfExperience');
    print('Skills: ${_skills.map((s) => s.name).join(", ")}');
    print('Address: $_address');
    print('Computed Salary: \$${computeSalary().toInt()}');
  }
}

void main() {
  // Create address
  const address1 = Address(
    street: '123 Main St',
    city: 'Phnom Penh',
    zipCode: '12000',
  );

  const address2 = Address(
    street: '456 Oak Ave',
    city: 'Siem Reap',
    zipCode: '17000',
  );

  // Create employees using regular constructor
  var emp1 = Employee('Sokea', 40000, [Skill.FLUTTER, Skill.DART], address1, 3);
  emp1.printDetails();
  print('\n');

  // Create employee using named constructor
  var emp2 = Employee.mobileDeveloper('Ronan', 40000, address2, 5);
  emp2.printDetails();
  print('\n');

  // Create web developer
  var emp3 = Employee.webDeveloper('Dara', 40000, address1, 2);
  emp3.printDetails();
}
