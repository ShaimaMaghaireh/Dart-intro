

void main() {

  int x=10;
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
print(93.5 is! int);
}
