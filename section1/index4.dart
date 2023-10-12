void main(List<String> args) {
  String name = "SHermukhammad";
  String surname = "Temirov";
  String corse0 = "Foudention of Dart";
  String corse1 = "Foudention of Dart";

  print(name + surname);
  print(corse0);
  print(corse1);

  print("Interpolation : $name, $surname");
  print("My name has ${name.length} letters!");
  print("My surname has ${surname.length} letters!");

  print("This is veriy long row This is veriy long row This is veriy long row " 
      "This is veriy long row");

  int num5 = 50;
  double num6 = 54.6;

  print("First number : " + num5.toString());
  print("Second number : " + num6.toString());
  print("Firs number: $num5, Second number : $num6");


  double wedth = 10;
  double heght = 12;
  print("Heght is $heght, Wedth is $wedth  $heght x $wedth = ${heght * wedth}");

}