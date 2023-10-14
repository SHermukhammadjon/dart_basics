
void main(List<String> args) 
{
    say_hello(name : "SHermukhammad");
    print(multiplay(num1 : 13, num2 : 20));
}

void say_hello({String name = "Anonim"})
    {
        print("Hello $name !");
    }

int multiplay({int num1 = 0, int num2 = 0})
    {
        return num1 * num2;
    }