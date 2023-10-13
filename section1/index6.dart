import 'dart:io';

void main(List<String> args) 
    {
        print("pleas enter firs number:");
        var num1 = stdin.readLineSync();
        var inum1 = int.tryParse(num1 ?? "");
    
        print("Pleas enter second number:");
        var num2 = stdin.readLineSync();
        var inum2 = int.tryParse(num2 ?? "");

        
        // Number compering

        // if(inum1 != null && inum2 != null)
        // {
        //     if(inum1 > inum2)
        //         {
        //             print("$num1 biger then $num2");
        //         }
        
        //     else if(inum1 < inum2)
        //         {
        //             print("$num1 less then $num2");
        //         }
        //     else 
        //         {
        //             print("$num1 and $num2 are equal");
        //         }
        // }

        // else 
        //     {
        //         print("Wrong input");
        //     }

        var blah;
        // like lambida
        if(inum1 != null && inum2 != null)
            {
                blah = (inum1 > inum2)? num1 : num2;
                print(blah);
            }
  
}