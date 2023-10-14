import 'dart:io';

void main(List<String> args) 
{   
    print("\nSigin in to system\ndo you want to sigin in (yes/no)\n>>>");
    var input = stdin.readLineSync();
    // var num1 = int.tryParse(input ?? '');

    if (input != null)
        {
            switch(input.toLowerCase())
                {
                    case "yes":
                        print("pleas enter the code:");
                        break;
                    
                    case "y":
                        print("pleas enter the code:");
                        break;
                    
                    case "no":
                        print("get out");
                        break;
                    
                    case "n":
                        print("get out");
                        break;
                    
                    default:
                        print("wrong input");
                }
        }
    
}