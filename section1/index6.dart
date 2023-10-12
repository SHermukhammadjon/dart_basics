import 'dart:io';

void main(List<String> args) {
  int num1 = 12;
  var num2 = 11;
  // var num3 = 16;

  // if(num1 > num2)
  // {
  //   print("$num1 is bigger then $num2!");
  // }
  // else if(num1 < num2)
  // {
  //   print("$num2 is bigger then $num1!");
  // }
  // else
  // {
  //   print("$num1 and $num2 is equal!");
  // }

  print("Pleas enter your name");
  String? name = stdin.readLineSync();

  print("Enter yuor judge");
  int? judge = int.parse(stdin.readLineSync()!);

  if(judge < 90)
  {
    print("$name hasn't pass the excame :(");
  }
  else if(judge >= 90 && judge <= 180)
  {
    print("$name has pass the excame !");
  }
  else
  {
    print("wrong judge! ");
  }
  
}