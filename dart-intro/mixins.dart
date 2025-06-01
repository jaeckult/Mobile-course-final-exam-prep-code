mixin Status {
  bool fullTime = false;
  bool employee = true;
}

class Employee with Status {
  String name = 'Yitbarek';
  String address = 'Addis Ababa';
  String salary = '1000 USD';
}

void main(){
  Employee employee = Employee();
  print('Name: ${employee.name}');
  print('Address: ${employee.address}');
  print('Salary: ${employee.salary}');
  print('Full Time: ${employee.fullTime}');
  print('Employee Status: ${employee.employee}');
}