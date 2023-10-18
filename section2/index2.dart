


void main(List<String> args) 
{
  var human1 = Human('Hasan', 17); 
  var human2 = Human('Xusan', 17);

  print(human1.get_name());
  print(human2.get_name());
  
  var student1 = Student("Husan", 17);
  print(student1.get_name());

}

class Human
  {
    String name = 'None'; int age = 0;

    Human(String name, int age)
      {
        this.name = name;
        this.age = age;
      }

    String get_name()
      {
        return this.name;   
      }
  }

class Student extends Human
  {
    Student(super.name, super.age);
    
  }