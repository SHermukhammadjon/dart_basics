
void main(List<String> args) 
{
    // num number1 = 10;
    // num number2 = 5;

    // print((number1 + number2) * 10 % 9 / 2);

    // loops

    // for(int i = 1; i <= 10; i++)
    //     {
    //         print("blah $i");
    //     }
    
    // List blah = ["blah1", "blah2", 'blah3', 'blah4', 5, 6.6];

    // for (var item in blah)
    //     {
    //         print("$item type: ${item.runtimeType}");
    //     }

    
    bool status = true; int count = 0;
    while(status)
        {
            count++;
            if(count == 10)
                {   
                    status = false;
                    print("count: $count  \n\nloop stoped");
                    break;
                }
            print("count: $count");
        }

}