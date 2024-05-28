
import 'dart:io';
/*class NovelWriters
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
}*/
//Task 6:
/*class product
{
String name;
int num;
double price;
int year;
List ingredients;

product(this.name,this.num,this.price,this.year,this.ingredients);

String toString()
{
  return 'Product information: $name,$num,$price,$year,$ingredients';
}

void Buy()
{
  print('You bought this product');
}
void replace()
{
  print('Do you want to replace this product??');
}

}*/
class Book
{
   String _id;// when we use _ it become private 
   String name;
   String author;
   double price;
   double _LibraryPrice;
   int year;
   String discription;
   List categories;
  Book({  required String id,required this.name, required this.author,required  double LibraryPrice,required this.year,required this.discription,required this.categories}):_id=id,_LibraryPrice=LibraryPrice,price=(LibraryPrice+(LibraryPrice*0.15));

String get id=>_id;

set id(String value)
{
  _id=value+'0';
}
String toString()
{
  return 'this book info: $name,$author,$categories,$discription,$price,$year,$_id';
}
void read()
{
  print('You satart reading the book $name;');
}
void rint()
{
  print('You rint the book $name for week ');
}
void buy()
{
  print('You buy this book $name ');
}
void mark()
{
  print('You marked this line from book $name ');
}

}
void main()
{
  //print('Participating writers in the Book Fair :');
  //NovelWriters().writerinfo();
  Book book1=Book( id:'003',name:'Soqotra',author: 'Hanan',LibraryPrice:5,year:2022 ,discription: 'About Soqotra Island',categories:['novel','fantasy']);
print(book1);

//Book book2=Book('Khawiah','Ayman Otoom',5,2015,'About different kinds of war',['novel','life']);
   print('''

''');
   //print(book2);
   book1.read();
   //book2.read();
   //book2.buy();
   //book2.rint();
   book1.buy();
   book1.rint();
  print(book1.price);
//product p1=product('Cheese cake',987456,2.50,2024,['creamy cheese','sugar','flour']);
//print('Product 1: $p1');

//product p2=product('Chocolate cake',987457,3.50,2024,['dark chocolate','sugar','flour']);
//print('Product 2: $p2');

/*p1.Buy();
p1.replace();
p2.Buy();
p2.replace();*/
}

/*class NovelWriters
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
  }*/
