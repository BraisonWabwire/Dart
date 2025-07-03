// Learning classes
void main(){
   
   
  //  var noodless=Pizza(["camdel","shbueb"], "vegVolacano", 19.5);
  //  print(noodless.format());

   var food=collection<MenuItem>("Skuma wiki", ["hello","hi","yoh"]);
   var random=food.randomItem();
   print(random);
}
class MenuItem{
  String title;
  double price;
  double tax=0.23;
  
  MenuItem(this.title, this.price);
  double get finalPrice=>price*tax;

  format(){
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

class collection<T>{
  String name;
  List<T> data;

  collection(this.name,this.data);

 T randomItem(){
    data.shuffle();
    return data[0];
  }

}