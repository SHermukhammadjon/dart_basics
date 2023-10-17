// Map 



void main(List<String> args) 
{
  Map <int, dynamic> users_data = 
  {
    1 : {'name' : '__Shermukhammad__', 'age' : 19}, 
    2 : {'name' : "Umidyor"},
    3 : {'name' : 'Muhammad'}
  };

  users_data[1].update('name', (value) => 'SHermukhammad');

  for(int id in users_data.keys)
    {
      print(users_data[id]);
    }
}