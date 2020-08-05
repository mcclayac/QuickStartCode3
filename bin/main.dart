void main(List<String> arguments) {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print('Dart Quick Start Chapter 3');
  // https://learning.oreilly.com/library/view/quick-start-guide/9781484255629/A490744_1_En_3_Chapter.html

  code3_1();
  code3_3();
  codeFatArrow();
  codeRecursive();

  // Objects
  code3_4();
  code3_5();
  code3_6();
  code3_7();
  code3_8();

  // Constructors
  code3_9();
  code3_10();
  code3_11();

  // Single Principal
  code3_13();
  code3_14();

  // LEXICAL SCOPE IN FUNCTIONS
  code3_15();
  code3_16();

  // GETTER AND SETTER
  code3_17();

  //DIFFERENT TYPES OF PARAMETERS
  code3_18();
  code3_20();

  // MORE ABOUT CONSTRUCTORS
  code3_21();



  





  
  
}
//----------------------------------------------
//----------------------------------------------

class Bear6 {
  //reference variable
  int collarID;
  //default and parameterized constructor
  Bear6(this.collarID);
  //first named constructor
  Bear6.firstNamedConstructor(this.collarID);
  //second named constructor
  Bear6.secondNamedConstructor(this.collarID);
  void trackingBear() {
    String color; // local variable
    print("Tracking the bear with collar ID ${collarID}");
  }
}

void code3_21() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.21");
  // bear1 is reference variable
  // Bear() is object// It should be class no object I suppose
  var bear1 = Bear6(1);
  bear1.trackingBear();
  var bear2 = Bear6.firstNamedConstructor(2);
  bear2.trackingBear();
  var bear3 = Bear6.secondNamedConstructor(3);
  bear3.trackingBear();
}
//----------------------------------------------
//----------------------------------------------

//named parameter
int findTheVolume(int length, {int height, int breadth}){
  return length * height * breadth;
}

void code3_20() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.20");
  //sequence does not matter
  var  result1 = findTheVolume(10, height: 20, breadth: 30);
  var  result2 = findTheVolume(10, breadth: 30, height: 10);
  print(result1);
  print(result2);
}
//----------------------------------------------
//----------------------------------------------

//default parameters
String defaultParameters(String name, String address, {int age = 10}){
  return "$name and $address and age $age";
}
//optional parameters
String optionalParameters(String name, String address, [int age] ){
  return "$name and $address and $age";
}

void code3_18() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.18");
  print(defaultParameters("John", "Jericho"));
  print(optionalParameters("John", "Form Chikago"));
  print(optionalParameters("Anthony", "McClay", 52));
  // overriding the default age
  print(defaultParameters("JOhn", "Jericho", age : 20));
  print(defaultParameters("JOhn", "Jericho", age : 40));

}
//----------------------------------------------
//----------------------------------------------

class myClass {
  String name;
  String get getName => name;
  set setName(String aValue) => name = aValue;
}
void code3_17() {
  var myObject = myClass();
  myObject.setName = "Sanjib";
  print(myObject.getName);
}
//----------------------------------------------
//----------------------------------------------
void code3_16() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.16");

  //we can access the outside variable
  print(outsideVariable);
  // we cannot access the insider variable, it gives us error
               /*  print(insiderVariable);  */
  // it is an insider function
  String insiderFunction(){
    // I can access the outisde variable, no problem
    print("This is from the insider function.");
    print(outsideVariable);
    String insiderVariable = "I am an insider";
    print(insiderVariable); // it's okay to access this insider
  }
  insiderFunction();

}
//----------------------------------------------
//----------------------------------------------
var outsideVariable = "I am an outsider.";

void code3_15() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.15");

  //we can access the outside variable
  print(outsideVariable);
  // we cannot access the insider variable, it gives us error
  //print(insiderVariable);
  // it is an insider function
  String insiderFunction(){
    // I can access the outside variable, no problem
    print("This is from the insider function.");
    print(outsideVariable);
    String insiderVariable = "I am an insider";
    print(insiderVariable); // it's okay to access this insider
  }
  insiderFunction();

}
//----------------------------------------------
//----------------------------------------------

class MyClass {
  String myVariable; //property or instance variable, initially null
  MyClass(this.myVariable); //constructor
  String myMethod(){ //method declaration
    return "This is my method and this is ${myVariable}"; //returning value
  }
}

void code3_14() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.14");

  var myObject = MyClass("My String"); //creating new instance of class MyClass
  print("${myObject.myMethod()}"); //printing the value

}
//----------------------------------------------
//----------------------------------------------
class CheckHTTPS {
  String urlCheck;
  CheckHTTPS(this.urlCheck);
  bool checkURL(String urlCheck){
    if(this.urlCheck.contains("https")){
      return true;
    } else return false;
  }
}

void code3_13() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.13");
  var newURL = CheckHTTPS('http://sanjib.site');
  if(!newURL.checkURL(newURL.urlCheck)) {
    print("The URL ${newURL.urlCheck} is not secured");
  }
}

//----------------------------------------------
//----------------------------------------------
void code3_11() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.11");

  var fatherBear = Bear5(6, 10);
  fatherBear.weightGain = fatherBear.numberOfFish * fatherBear.hourOfSleep;
  print("Father bear eats ${fatherBear.eatFish(fatherBear.numberOfFish)} fishes. And he sleeps for ${fatherBear.sleepAfterEatingFish(fatherBear.hourOfSleep)} hours.");
  print("Father bear has gained ${fatherBear.weightGaining(fatherBear.weightGain, 1)} pounds of weight.");
  print("The type of the object : ${fatherBear.weightGain.runtimeType}");
  String weightGained = fatherBear.weightGain.toString();
  print("The type of the same object has changed to : ${weightGained.runtimeType}");

}
//----------------------------------------------
//----------------------------------------------
class Bear5 {
  int numberOfFish;
  int hourOfSleep;
  int weightGain;
  Bear5(int numOfFish, int hourOfSleep ){// constructor
    this  .numberOfFish = numOfFish  ;//using this keyword to point out the current class object
    this  .hourOfSleep = hourOfSleep;
  }
  //Bear(this.numberOfFish, this.hourOfSleep);
  int eatFish(int numberOfFish) => numberOfFish;
  int sleepAfterEatingFish(int hourOfSleep) => hourOfSleep;
  int weightGaining(int numberOfFish, int hourOfSleep) => weightGain = numberOfFish * hourOfSleep;
}

void code3_10() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.10");
  var fatherBear = Bear5(6, 10);
  print("Father bear eats ${fatherBear.eatFish(fatherBear.numberOfFish)} fishes. And he sleeps for ${fatherBear.sleepAfterEatingFish(fatherBear.hourOfSleep)} hours.");
  print("Father bear has gained ${fatherBear.weightGaining(fatherBear.numberOfFish, fatherBear.hourOfSleep)} pounds of weight.");
}
//----------------------------------------------
//----------------------------------------------

class Bear4 {
  int numberOfFish;
  int hourOfSleep;
  int weightGain;
  Bear4(this.numberOfFish, this.hourOfSleep  );//  Constructor
  int eatFish(int numberOfFish) => numberOfFish;
  int sleepAfterEatingFish(int hourOfSleep) => hourOfSleep;
  int weightGaining(int numberOfFish, int hourOfSleep) => weightGain = numberOfFish * hourOfSleep;
}

void code3_9() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.9");

  var fatherBear = Bear4(6, 10);
  print("Father bear eats ${fatherBear.eatFish(fatherBear.numberOfFish)} fishes. And he sleeps for ${fatherBear.sleepAfterEatingFish(fatherBear.hourOfSleep)} hours.");
  print("Father bear has gained ${fatherBear.weightGaining(fatherBear.numberOfFish, fatherBear.hourOfSleep)} pounds of weight.");
}
//----------------------------------------------
//----------------------------------------------
class Bear3 {
  int numberOfFish;
  int hourOfSleep;
  int weightGain;
  //changing the styles of the methods completely
  int eatFish(int numberOfFish) => numberOfFish;
  int sleepAfterEatingFish(int hourOfSleep) => hourOfSleep;
  int weightGaining(int numberOfFish, int hourOfSleep) => weightGain = numberOfFish * hourOfSleep;
}

void code3_8() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.8");

  var fatherBear = Bear3(); //omitted the 'new' word
  fatherBear.numberOfFish = 7;
  fatherBear.hourOfSleep = 20;
  print("Father bear eats ${fatherBear.eatFish(fatherBear.numberOfFish)} fishes. And he sleeps for ${fatherBear.sleepAfterEatingFish(fatherBear.hourOfSleep)} hours.");
  print("Father bear has gained ${fatherBear.weightGaining(fatherBear.numberOfFish, fatherBear.hourOfSleep)} pounds of weight.");

}
//----------------------------------------------
//----------------------------------------------

class Bear2 {
  int numberOfFish;
  int hourOfSleep;
  int weightGain;
  int eatFish(int numberOfFish){
    return numberOfFish;
  }
  int sleepAfterEatingFish(int hourOfSleep){
    return hourOfSleep;
  }
  int weightGaining(int numberOfFish, int hourOfSleep){
    weightGain = numberOfFish * hourOfSleep;
    return weightGain;
  }
}

void code3_7() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.7");
  var fatherBear = new Bear2();
  fatherBear.numberOfFish = 6;
  fatherBear.hourOfSleep = 10;
  print("Father bear eats ${fatherBear.eatFish(fatherBear.numberOfFish)} number of fish. And he sleeps for ${fatherBear.sleepAfterEatingFish(fatherBear.hourOfSleep)} hours.");
  print("Father bear has gained ${fatherBear.weightGaining(fatherBear.numberOfFish, fatherBear.hourOfSleep)} pounds of weight.");

}

//----------------------------------------------
//----------------------------------------------

class Bear {
  int eatFish(int numberOfFish){
    return numberOfFish;
  }
}
void code3_6() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.6");
  var fatherBear = new Bear();
  print("Father bear eats ${fatherBear.eatFish(6)} number of fish.");
}
//----------------------------------------------
//----------------------------------------------
void code3_5() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.5");

  var newCar = new Car();
  newCar.carName = "Red Angel";
  newCar.carModel = 256;
  newCar.turnOn(true);
  if(newCar.isTurnedOn()){
    print("${newCar.carName} starts. It has model number ${newCar.carModel}");
  } else print("${newCar.carName} stops. It has model number ${newCar.carModel}");

}
//----------------------------------------------
//----------------------------------------------
void code3_4() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.4");

  var newCar = new Car();
  newCar.carName = "Red Angel";
  newCar.carModel = 256;
  newCar.turnOn(false);
  if(newCar.isTurnedOn()){
    print("${newCar.carName} starts. It has model number ${newCar.carModel}");
  } else print("${newCar.carName} stops. It has model number ${newCar.carModel}");
}

class Car {
  int carModel = 123;
  String carName = "Blue Angel";
  bool isOn = true;

  bool turnOn(bool turnOn){
    isOn = turnOn;
  }

  bool isTurnedOn() {
    return isOn;
  }
}
//----------------------------------------------
//----------------------------------------------

int getRecurse(int num)
{
  if (num > 1)
    return num * getRecurse(num - 1);
  else return 1;
}

void codeRecursive() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code Recursive");

  print(getRecurse(5));

}
//----------------------------------------------
//----------------------------------------------

void withoutReturningValue(){
  print("We cannot return any value from this function.");
}
int anIntegerReturnTypeFunction(){
  int num = 10;
  return num;
}
//using Fat Arrow
String stringReturnTypeFunction(String name, String address) => "This is $name and this is $address and we have used the Fat Arrow method.";

void codeFatArrow() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code FatArrow");
  withoutReturningValue();
  var returningInteger = anIntegerReturnTypeFunction();
  print("We are returning an integer: $returningInteger");
  print(stringReturnTypeFunction("John", "Jericho Town"));

}
//----------------------------------------------
//----------------------------------------------
void code3_3() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.3");
  myName();
}
myName(){
  print("My name is John");
  myAge(12);
}
myAge(int age){
  print("My age is ${age}");
}


//----------------------------------------------
//----------------------------------------------
void code3_1() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 3.1");
  isTrue();
  isFalse();
}
void isTrue(){
  print("It's true.");
}
void isFalse(){
  print("It's false.");
}
//----------------------------------------------
//----------------------------------------------

