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

