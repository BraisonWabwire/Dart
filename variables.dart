// Learning classes
void main(){
   
   var noodles=MenuItem("idomie", 40.45);
   var noodless=Pizza(["camdel","shbueb"], "vegVolacano", 19.5);
   print(noodless.format());
}
class MenuItem{
  String title;
  double price;
  double tax=0.23;
  
  MenuItem(this.title, this.price);
  double get finalPrice=>price*tax;

  String format(){
    return "$title,---->$price,---->$finalPrice";
  }
}

class Pizza extends MenuItem{
  List<String> toppings;

  Pizza(this.toppings, super.title,super.price);

  @override
  String format(){
    var formatToppings = "contains:";
    
    for (final t in toppings){
      formatToppings='$formatToppings $t';
    }
    return '$title->$price \n$formatToppings';

  }
}

