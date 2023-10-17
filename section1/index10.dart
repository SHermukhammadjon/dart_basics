// Try and catche

void main(List<String> args) 
  {
    try 
      {
        balhfunction(10);
        balhfunction(-10);
      } 
    
    catch (error, stack)
      {
        print("Error catched: $error \nStack Trace $stack");
      }
    
    finally
      {
        print("last finaly block");
      }
  }


void balhfunction(int num)
  {
    if (num <= 0)
      {
        throw new blahNumError();
      } 
    else
      {
        print("blah is equal $num");
      }
  }

class blahNumError implements Exception
  {
    String show() => "blah num lower   zero";

  }