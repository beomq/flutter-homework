import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  // 직렬화
  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  // 직렬화
  Map<String, dynamic> toJson() => {
        'name': name,
        'leader': leader.toJson(),
      };
}

void main() {
  final employee = Employee('홍길동', 41);

  final department = Department('총무부', employee);

  final companyFile = File('company.txt');
  String userString = jsonEncode(department.toJson());
  companyFile.writeAsStringSync(userString);
}
