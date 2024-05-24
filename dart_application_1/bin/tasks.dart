
import 'dart:io';
void main()
{

  //TASK 2:
  /*print("""
1_Register
2_Login
3_Exit """
);
print('Enter your choice number');
String? username;
String? passw;
String? email;
String? epass;
String choice = stdin.readLineSync()!;

 if (choice =='1')
{
print('Your choice is Register');
print('Enter your email account :');
String email = stdin.readLineSync()!;
print('Enter your password :');
String epass = stdin.readLineSync()!;
print(' Now you can login ,enter 2 to continue :');

String choice = stdin.readLineSync()!;

 if (choice == '2')
{
   print('your choice is Login');
   print('Enter your user name and password :');
   String username = stdin.readLineSync()!;
   String passw = stdin.readLineSync()!;

  print('Check your user name and password');

 if(username == stdin.readLineSync()! && passw == stdin.readLineSync()! )
 {
  print('you login successfully.');
 }
 else
 {
  print('Wrong information !!!!!');
 }
}
}

else if(choice=='3')
{
  print('your choice is Exit');
}

//Method Task:
String  sumNum(int a,int  b,int c,int d)
{
  int z=a+b+c+d;
 return z.toString();
}
print(sumNum( 1,2,3,4));


int sumofnum(int a,int  b,int c,int d)
{
  int z =a+b+c+d;
 return z;
 }
print(sumofnum(1,2,3,5));*/

//Taask 3
/*String replacechar(String input) {
  if (input.isEmpty) return '';

  String result = '';
  int count = 1;

  for (int i = 1; i < input.length; i++) {
    if (input[i] == input[i - 1]) {
      count++;
    } else {
      result += '${input[i - 1]}${count > 1 ? count : ''}';
      count = 1;
    }
  }
  
  result += '${input[input.length - 1]}${count > 1 ? count : ''}';

  return result;
}

  String input = "assseeeddcc";
  String output = replacechar(input);
  print(output); */

  //TASK 4:
 print(""" 
 Welcome to our Hang Man game
 here is the rules:
 you have 6 chances to guess
  """);
 bool isrunning= true;
 String guess;
 int turn=1;
 List <String> spaces=[];
 String secret=stdin.readLineSync()!;
 print(""" 
 
 
 
 
 
 
 
 
 
 
 
 
 
 """); 
 for(int i=0;i<secret.length;i++)
 {
   spaces.add('_');
 }
 print (spaces);

 while(isrunning)
 {
  print('enter your guess');
  String guess=stdin.readLineSync()!;
  if(guess.length>1)
  {
    print('enter one character');
    continue;

  }
  
    bool isguess=false;
 for(int i=0;i<secret.length;i++)
  {
    
    if(secret[i]==guess)
    {
      spaces[i]=guess;
      isguess=true;
    }
   if( spaces.join()==secret)
      {
        isrunning=false;
        print('you win this game');
       break;
      }
  }

  if(isguess==false)
  {
   turn+=1;
   
    print('your guess is wrong');
  
    switch (turn ) {
      case  1:
      print("""


_ _ _ _ _ _ _""");
         break;
         case 2:
      print("""
|
|
|
|
_ _ _ _ _ _ _""");
print('turn: $turn');
         break;
              case 3:
      print("""
_ _ _ _ _
|
|
|
|
_ _ _ _ _ _ _""");
print('turn: $turn');
         break;
                case 4:
      print("""
_ _ _ _ _
|        |
|         
|
|
_ _ _ _ _ _ _""");
print('turn: $turn');
         break;
         case 5:
      print("""
_ _ _ _ _
|        |
|        |        
|
|
_ _ _ _ _ _ _""");
print('turn: $turn');
         break;

case 6:
      print("""
_ _ _ _ _
|        |
|        |        
|        O
|       
_ _ _ _ _ _ _""");
print('turn: $turn');
         break;
    case 7:
      print("""
_ _ _ _ _
|        |
|        |        
|        O
|       /|/
_ _ _ _ _ _ _""");
print('turn: $turn');
         break;
    }
    if(turn>6)
     {
      print('you lose the game');
      break;
    }
  }
  
  print(spaces);

  }
  
  print('Participating writers in the Book Fair :');
   NovelWriters().writerinfo();
  
}
//Task 5:
  class NovelWriters
{
  String name='Adham Sharkawi';
  String novname='Notfah';
  int year=2016;
  double price=5.50;
  String publisher='KALEMAT';

  void writerinfo()
  {
    print('Name: $name');
    print('Novel Name: $novname');
    print('Year of publication: $year');
    print('Price: $price');
    print('Publishing House: $publisher');
  }
}