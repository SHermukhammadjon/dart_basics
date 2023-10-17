// Lists
// list have two type 1. exsact leng 2. dynamic leng


void main(List<String> args) 
{
  List <int> numbers = List.filled(10, 0);
  print(numbers);
  numbers[3] = 42;

  print(numbers);
  print("${numbers[3]}");

  List <String> namse = List.filled(7, "???");
  namse[0] = "SHermukhammad";
  int n = 0;
  for (String name in namse) 
    {
      print("index : $n name:  $name"); 
      n++;
    }
  
  
}