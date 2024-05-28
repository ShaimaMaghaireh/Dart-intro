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

  String get id=>_id;
  String toString()
{
  return 'this book info: $_id,$title,$author,$price,$year,$categories,$discription,$isavailable';
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
      |     {search:}     |    {Book List}          |     {Categories}       |
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
       /*print('User name:');
       user=stdin.readLineSync();
       print('Password:');
       password=stdin.readLineSync();

       if(user==stdin.readLineSync() && password==stdin.readLineSync())
      {
        print('# You Logged in successfuly. ');
      }*/
      }
       
  }

 else if(choose=='3')
 {
  print('# Your choice is Exit.');
 }

 books b1=books(id:'001',title:'Ikadoli',author:'Hanan Lasheen',LibraryPrice:5,year:2015,discription:'about fantasy kingdom',categories:['novel','fantasy'],isavailable:true);
 print(b1);
}