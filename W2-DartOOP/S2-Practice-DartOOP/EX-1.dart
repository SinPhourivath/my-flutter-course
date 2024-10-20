enum Skill { FLUTTER, DART, C, CPP, GIN, GO, OTHER }

Map<Skill, int> skillBasedSalary = {
  Skill.DART : 400,
  Skill.FLUTTER : 1000,
  Skill.C : 1500, // I love C, so why not :D
  Skill.CPP : 1000,
  Skill.GO : 500,
  Skill.GIN : 900,
  Skill.OTHER : 700
};

class Address {
  final String _street;
  final String _city;
  final String _zipCode;

  Address._({required String street, required String city, required String zipCode})
    : _street = street,
      _city = city,
      _zipCode = zipCode;

  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;

  @override
  String toString() {
    return "Address { city: $_city, street: $_street, postal_code: $_zipCode }";
  }
}

class Employee {
  final String name;
  Address _address;
  int yearOfExperience;
  int _baseSalary;
  final List<Skill> skills;

  Employee({required this.name, required Address address, required this.yearOfExperience, required int baseSalary, required this.skills})
    : _address = address,
      _baseSalary = baseSalary;

  Employee.mobileDeveloper({required this.name, required Address address, required this.yearOfExperience, required int baseSalary})
    : _address = address,
      _baseSalary = baseSalary,
      skills = [Skill.FLUTTER, Skill.DART];

  Employee.backendDeveloper({required this.name, required Address address, required this.yearOfExperience, required int baseSalary})
    : _address = address,
      _baseSalary = baseSalary,
      skills = [Skill.GIN, Skill.GO];

  void printDetails() {
    print('Employee: $name,\nAddress: $address,\nYear of Experience: $yearOfExperience,\nBase Salary: \$${baseSalary},\nSKill: ${skills}');
  }

  int calculateSalary() {
    int total = baseSalary;
    skills.forEach((skill) {
      if (skillBasedSalary.containsKey(skill)) {
        total += skillBasedSalary[skill]!;
      }
    });
    return total;
  }

  int get baseSalary => _baseSalary;
  Address get address => _address;
}

void main() {
  var address1 = Address._(street: "Chamkar Doung", city: "Phnom Penh", zipCode: "120505");
  var emp1 = Employee.mobileDeveloper(name: 'Sokea', address: address1, yearOfExperience: 2, baseSalary: 10000);

  var address2 = Address._(street: "6A", city: "Phnom Penh", zipCode: "121002");
  var emp2 = Employee(name: 'Ronan', address: address2, yearOfExperience: 10, baseSalary: 45000, skills: [Skill.DART, Skill.FLUTTER, Skill.C, Skill.OTHER]);

  emp1.printDetails();
  print("Total Salary: \$${emp1.calculateSalary()}");

  print("");

  emp2.printDetails();
  print("Total Salary: \$${emp2.calculateSalary()}");
}
