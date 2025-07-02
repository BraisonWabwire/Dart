// Functions in Dart
void main(){
  final greetings= greet(name:"Braison", age:21);
  print(greetings);
}
String greet({String? name, int? age}){
  return "hi i am $name, $age years old";
}