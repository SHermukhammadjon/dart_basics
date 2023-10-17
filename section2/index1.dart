/*  
  OPP 
*/

void main(List<String> args) 
{
  var student1 = Student("SHermukhammad", 'Data Scientist', age : 19);
  student1.display();
}

class Student
  { 
    int age = 0;
    int course = 0;
    String name = '';
    String occupation = '';

    Student(String name, String occupation, {int age = 0, int course = 1})
      {
        this.name = name;
        this.occupation = occupation;
        this.age = age;
        this.course = course;
      }

    void display()
      {
        print("Name :${this.name}  \nAge ${this.age} \nCourse : ${this.course}  \nOcupation: ${this.occupation}");
      } 
  }

