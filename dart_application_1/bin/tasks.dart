import 'dart:io';
void main()
{

  //TASK 2:
  print("""
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
print(sumofnum(1,2,3,5));
}