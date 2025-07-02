// Map
void main(){
  Map<String,String> planets={
    "name":"Braison",
    "email":"braisonwabwire2003@gmail.com",
    "nationality":"",
    };
  print(planets["name"]);
  print(planets.containsKey("name"));
  print(planets.containsKey("namde"));
  print(planets.remove("nationality"));
  print(planets);
  
}