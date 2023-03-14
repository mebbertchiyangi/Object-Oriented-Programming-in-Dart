import 'dart:io';
//import 'package:path/path.dart' as p;
//import 'dart:html';

void main() async{
  //Creating objects
  var chicken = new Domestic();
  var eagle = new Bird();
  var goat = new Goat();
  File file = new File('C:\\Users\\Public\\Documents\\sample.txt');

  
  chicken.sound = 'Cluck';
  print('${chicken.sound} ${chicken.makeSound()}');
  
  print(eagle.makeMovement());
  print(goat.makeSound());

//reading from a file from a file
  if(await file.exists()){
  print(file.readAsStringSync());
  }
  else{print('could not locate ');
  }
numLoop();
}
  void numLoop(){

    for(int i= 1; i<=10;i++){
      print(i);
    }
    
  }

//Declaration of parent Animal class
class Animal {

  String? name;
  int? age;
  String? sound;

    String makeSound(){
      return 'is the sound the animal make ';
    }
}

//Domestic Class inherits from Animal class
class Domestic extends Animal {
  String? breed;
}

//declaration of an interface class 
class Wild {

  String makeMovement(){
    return 'make movements';
  }
}
//Bird class impliments Wild
class Bird implements Wild{
    String makeMovement(){
    return 'flies to make movement';
  }
}

//class overiding an inherited method 
class Goat extends Domestic{
  @override 
    String makeSound(){
      return 'the goat makes the sound baa';
    }
}







































  