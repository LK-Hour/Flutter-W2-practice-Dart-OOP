enum Skill {
  FLUTTER(5000),
  DART(3000),
  OTHER(1000);

  final int bonus;

  const Skill(this.bonus);
}

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
  final String _name;
  final double _baseSalary;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;

  Employee(
    this._name,
    this._baseSalary,
    this._skills,
    this._address,
    this._yearsOfExperience,
  );

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

  // Getter methods
  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => List.unmodifiable(_skills);
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  double computeSalary() {
    double salary = _baseSalary;

    salary += _yearsOfExperience * 2000;

    for (var skill in _skills) {
      switch (skill) {
        case Skill.FLUTTER:
          salary += Skill.FLUTTER.bonus;
          break;
        case Skill.DART:
          salary += Skill.DART.bonus;
          break;
        case Skill.OTHER:
          salary += Skill.OTHER.bonus;
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
  // Create addresses
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

  var emp1 = Employee('Sokea', 40000, [Skill.FLUTTER, Skill.DART], address1, 3);
  emp1.printDetails();
  print('\n');

  var emp2 = Employee.mobileDeveloper('Ronan', 40000, address2, 5);
  emp2.printDetails();
  print('\n');
}
