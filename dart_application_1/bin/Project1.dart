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

  books({required String id,required this.title,required this.author,required double LibraryPrice,required this.year,required this.discription,required this.categories,required bool isavailable}):_id=id,_LibraryPrice=LibraryPrice,price=(LibraryPrice+(LibraryPrice*0.15)),isavailable=true;

  //? String get id=>_id;
  String toString()
{
  return ' book information: $_id,$title,$author,$price,$year,$categories,$discription,$isavailable';
}

String? rint()
{
  print('You rint the book $title for week ');
  
}
String? buy()
{
  print('You buy this book $title ');
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



 books b1=books(id:'001',title:'Ikadoli',author:'Hanan Lasheen',LibraryPrice:5,year:2015,discription:'about fantasy kingdom',categories:['novel','fantasy'],isavailable:true);
books b2=books(id:'002',title:'Opal',author:'Hanan Lasheen',LibraryPrice:4,year:2016,discription:'about fantasy kingdom',categories:['novel','fantasy'],isavailable:true);
print('''                       Welcome to my Library
              Now you can discover our books and novels!
type what you want to discover,either the book list,novel list or buy or rent''');
print('note:enter a capital latter at first of the word!!');
String explore=stdin.readLineSync()!;
   
  //  for(int i=0;i<5;i++)
  //  {
  // if(explore=='Book List')
  // {
  //   print('This is the cuurent list of books:');
  //   print(b1);
  //   print(b2);
  // }

  // print('If want another thing,then type it :');
  // explore=stdin.readLineSync()!;

//   if(explore=='Novel List')
//   {
//     print('This is the cuurent list of novels:');
//       print(b2);
//   }
//    print('If want another thing,then type it :');
//   explore=stdin.readLineSync()!;

//   if(explore=='Rent Book')
//   {
//      b1.rint();
//   }

//  print('If want another thing,then type it :');
//   explore=stdin.readLineSync()!;

//   if(explore=='Buy Book')
//   {
//     b1.buy();
//   }

//  print('you explored every thing in the library !');
//   break;
//    }

  switch (explore)
 {
  case 'Book List':
     print('This is the cuurent list of books:');
     print(b1);
      print(b2);
     break;
  case 'Novel List':
     print('This is the cuurent list of novels:');
     print(b2);
     break;
  case 'Rent Book':
  print('Type book name and we will check if it is available.');
  b1.rint();
  break;
  case 'Buy Book':
  b1.buy();
  break;
  default:
  print('you explored every thing in the library !');

 }
// explore=stdin.readLineSync()!;
 break;}


}