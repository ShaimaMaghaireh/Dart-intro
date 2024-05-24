
import 'dart:io';

void main()
{
  print('Participating writers in the Book Fair :');
   NovelWriters().writerinfo();
}

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