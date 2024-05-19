import 'dart:io';

void main() {

 /* int x=10;
  print(x);

  print('shaima');

  String user='tala';
  print(user);

  List num=[1,'a',true];
  print(num);

  bool test=false;
  print(test);


  Map person={'name':'shaima','age':20,'city':'seoul'};
  print(person);
  print(person['city']);

  print('person name:${person['name']}');

  //Task 1:

  Map <String,int> n1={'age':10,'score':93,'level':1};
  print(n1);

  Map <String,String> n2={'Fname':'shaima','Lname':'Maghaireh','level':'first'};
  print(n2);

  Map <String,double> n3={'hieght':10.5,'width':9.5,'area':14.5};
  print(n3);

  Map <String,bool> n4={'passed':true,'fail':false,'graduate':true};
  print(n4);

  Map <String,List<String> > n5={
   'cars':['FORD','BMW','GMC']};
  print(n5);

  Map <String,List<int> > n6={
   'levels':[1,2,3]};
  print(n6);

  Map <String,dynamic> n7={'month':5,'day':'sunday','year':2024};
  print(n7);

  Map <int,int  > n8={1:10, 2:93,3:1};
  print(n8);

  Map <String,Map<String,int >> n9={'nmap':{'age':10,'score':93,'level':1}};
  print(n9);

  Map <String,Map<String,String>> n10={'n2map':{'country':'Jordan','city':'Amman','street':'street1'}};
  print(n10);


  //operations:
  int a=5;
  int b=4;
  int c=7;
  int d=5;

  print(' '*40);
  print(a+b);
  print(a-b);
  print(a*b);
  print(a/b);
  print(a~/b);
  print(a%b);
  print(a<b);
  print(a==b);
print(a<=b);
print(a!=b);
print(a is int);
print(93.5 is int);
print(93.5 is! int);*/

/*int y=9;
if(y==10)
{
  print('y is 10');
}

else if (y>10)
{
  print('y is greater than 10');
}
else if (y<10)
{
  print('y is less than 10');
}
else {
  print('y is not 10');
}*/

/*int x=7;
if(x==4)
{
  print('x = 4');
}
if(x>5)
{
  print('x > 5');
}
if(x<5)
{
print('x < 5');
}
else{
  print('x is not found');
}*/

/*String name='tala';
switch (name) {
  case 'shaima':
  print('this is shaima');
    break;
     case 'bushara':
  print('this is bushra');
    break;
     case 'ekram':
  print('this is ekram');
    break;
  default:
  print('the name is not found');
}*/
/*print("""
1_login
2_register
3_exit""");
int  choice = int.parse(stdin.readLineSync()!);
//print('your choice is $choice');
//print(choice is String);
if(choice == 1)
{
print('your choice is login');
}
else if(choice == 2)
{
print('your choice is register');
}
else if(choice == 3)
{
  print('choice is exit ');
}else {  print('wrong choice');}*/
/*int choice;
try{
  choice = int.parse(stdin.readLineSync()!);
}
 catch (e){
choice=0;
print('value is not int');
 }
for(int i=0;i<choice;i++)
{
  print(i);
}*/

/*void test(int x)
{
  print('this is test ${x+5}');

}

test(4);

String val()
{
  return 'Welcome';
}

print(val());

String val2(String a)
{
  String z=a;
  return z;
}

print(val2('s'));*/

/*void entnum(int a,int b,String op)
{

switch (op) {
  case '+':
   print(a+b);
     break;
     case '-':
   print(a-b);
     break;
     case '*':
   print(a*b);
     break;
     case '/':
   print(a/b);
     break;
  default:
  print('the operation not found');
}
}

entnum(2,3,'+');
entnum(2,3,'*');
entnum(2,3,'/');
entnum(2,3,'-');*/

/*Map student={'name':'shaima','age':20,'grade':'93'};
int  Major(int  g)
{

  switch (g) {
    case >65 && <75 :
    print('your major is English Language');
      break;
      case >75 && <85:
    print('your major is Mathmatics');
      break;
      case >85 && <95:
    print('your major is Computer Sience');
      break;
    default:
    print('Choose any Major you want ');
  }
  return g;
}
print(Major(95));*/

/*int primnum(int a)
{
  for(int i=0;i<10;i++)
  {
    if(a%2==0 && a/a==1)
    {
      print('A is not primary number');
    }
   
    else if(a%2 != 0 && a/1==a)
    {
      print('A is primary number');
    }
    else 
    {
      print('syntax error');
    }
  }
 return a;
}

print(primnum(0));*/

String hello='hello';
String newhello='';
for(int i=0;i<hello.length;i++)
{
  if(hello[i]=='l')
  {
    newhello +='*';
  }
  else{
    newhello += hello[i]; 
  }
  print(newhello);
}

}


