import 'dart:io';

class books
{
  String _id;
  String title;
  String author;
  double price;
  double _LibraryPrice;
  int year;
  String discription;
  List categories;
  bool isavailable;

  books({required String id,required this.title,required this.author,required double LibraryPrice,required this.year,required this.discription,required this.categories, required this.isavailable}):_id=id,_LibraryPrice=LibraryPrice,price=(LibraryPrice+(LibraryPrice*0.15));

  String toString()
{
  return ' book information: $_id,$title,$author,$price,$year,$categories,$discription,$isavailable';
}

String? rent()
{ 
    if (isavailable == false) 
    {
      print('Book is already rent.');
    } 
    else 
    {
      isavailable == true;
      print('Book $title has been rent.');
    } 
}

String? buy()
{
  print('Book $title has been bought.');
}

String? review()
{
  String review=stdin.readLineSync()!;
}
}


void main()
{
print('''                                 *                    *
                                 *  Shaima's Library  *
                                * *                  * *
                                 Welcome to my BOOK SHOP ''');
 print("""
""");
print('''

       _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      |                   |                         |                        |
      |     {Book List}   |    {Novel List}         |     {Buy or rent}      |
      |_ _ _ _ _ _ _ _ _ _| _ _ _ _ _ _ _ _ _ _ _ _ |_ _ _ _ _ _ _ _ _ _ _ _ |
      | <<Home>>    *** Join us whith our passion for reading ***            |
      |  1)Register                                                          |
      |  2)Login                                                             |
      |  3)Exit                                                              |
      |                                                                      |
      |                                                                      |
      | About this library: this library cntains some books                  |
      | that i have read and love it.So ,enjoy discovering them.             |
      |                                                                      |
      |                                                                      |
      |                                                                      |
      |                                                                      |
      |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ | 
                                                                          
       ''');

       print('''

''');
print('Now choose a number to continue:');
String? user;
String? password;
String? email;
String? emailpass;

String choose=stdin.readLineSync()!;

for(int i=0;i<=3;)
{
if(choose=='1')
{
  print(''' # Your choice is register.''');
  print(' # Enter your email account :');
  email=stdin.readLineSync();
  print('# Enter your email password :');
  emailpass=stdin.readLineSync();

 print('Now Login to continue,enter number 2:');
  choose=stdin.readLineSync()!;
}

 if(choose=='2')
  {
    print('''# Your choice is Login.''');
    print('# Enter your User name :');
    user=stdin.readLineSync();
     print('# Enter your password :');
     password=stdin.readLineSync();
      print('# Check your User name and Password:');

      if(user==stdin.readLineSync() && password==stdin.readLineSync())
      {
        print('# You Logged in successfuly. ');
      }
      else 
      {
       print('# Wrong information,try again !!!');

       user=stdin.readLineSync();
       password=stdin.readLineSync();
       print('# Check your User name and Password:');
       if(user==stdin.readLineSync() && password==stdin.readLineSync())
      {
        print('# You Logged in successfuly. ');
      }
      }   
  }
 
  if(choose=='3')
 {
  print('# Your choice is Exit.See you later!');
   break;
 }
//? book informations;

books b1=books(id:'01',title:'Ikadoli',author:'Hanan Lasheen',LibraryPrice:3,year:2016,discription:'about fantasy kingdom',categories:['novel','fantasy'],isavailable:true);
books b2=books(id:'02',title:'Opal',author:'Hanan Lasheen',LibraryPrice:3,year:2018,discription:'about fantasy kingdom',categories:['novel','fantasy'],isavailable:false);
books b3=books(id:'03',title:'Amanos',author:'Hanan Lasheen',LibraryPrice:3,year:2020,discription:'about fantasy kingdom',categories:['novel','fantasy'],isavailable:true);
books b4=books(id:'04',title:'Qweeqol',author:'Hanan Lasheen',LibraryPrice:3,year:2021,discription:'about fantasy kingdom',categories:['novel','fantasy'],isavailable:false);
books b5=books(id:'05',title:'Soqotra',author:'Hanan Lasheen',LibraryPrice:5,year:2023,discription:'about fantasy kingdom',categories:['novel','fantasy'],isavailable:true);
books b6=books(id:'06',title:'Siroosh',author:'Hanan Lasheen',LibraryPrice:6,year:2024,discription:'about fantasy kingdom',categories:['novel','fantasy'],isavailable:true);
books b7=books(id:'07',title:'Hadeeth Alsabah',author:'Adham Sharqawi',LibraryPrice:4,year:2016,discription:'Various articles on different topics.',categories:['Book','Esay'],isavailable:true);
books b8=books(id:'08',title:'hadeeth Almasaa',author:'Adham Sharqawi',LibraryPrice:4,year:2017,discription:'Various articles on different topics.',categories:['Book','Esay'],isavailable:false);
books b9=books(id:'09',title:'Kesh Malek',author:'Adham Sharqawi',LibraryPrice:4,year:2015,discription:'Various articles on different topics.',categories:['Book','Esay'],isavailable:true);
books b10=books(id:'010',title:'Naba Yaqeen',author:'Adham Sharqawi',LibraryPrice:4,year:2014,discription:'Various articles on different topics.',categories:['Book','Esay'],isavailable:false);
books b11=books(id:'011',title:'Telk Alayam',author:'Adham Sharqawi',LibraryPrice:4,year:2018,discription:'Various articles on different topics.',categories:['Book','Esay'],isavailable:true);
books b12=books(id:'012',title:'Rasael Men Alquraan',author:'Adham Sharqawi',LibraryPrice:4,year:2019,discription:'Various articles on different topics.',categories:['Book','Esay'],isavailable:false);
print('''                       Welcome to my Library
              Now you can discover our books and novels!
type what you want to discover,either the book list,novel list or buy or rent''');
print('note:enter a capital latter at first of the word!!');
String explore=stdin.readLineSync()!;

  // todo: explore library conten.
for(int i=0;i<5;i++)
{
  switch (explore)
 {
  case 'Book List':
     print('This is the cuurent list of books:');
     print(b7);
     print(b8);
     print(b9);
     print(b10);
     print(b11);
     print(b12);
     break;
  case 'Novel List':
     print('This is the cuurent list of novels:');
     print(b1);
     print(b2);
     print(b3);
     print(b4);
     print(b5);
     print(b6);
     break;
  case 'Rent Book':
  b1.rent();
  b2.rent();
  break;
  case 'Buy Book':
  b1.buy();
  b8.buy();
  break;
  case 'Book Review':
  b1.review();
  default:
  print('you explored every thing in the library !');
  break;
 }
 print('enter another thing you want:');
 explore=stdin.readLineSync()!;
}
 break;}
}