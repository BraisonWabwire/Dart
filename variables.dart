// Learning classes
void main(){
   
   
  //  var noodless=Pizza(["camdel","shbueb"], "vegVolacano", 19.5);
  //  print(noodless.format());

   var food=collection("Skuma wiki", [1,3,5,"hello",1,4,5,6]);
   var random=food.randomItem();
   print(random);
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

class collection{
  String name;
  List data;

  collection(this.name,this.data);

  randomItem(){
    data.shuffle();
    return data[0];
  }

}