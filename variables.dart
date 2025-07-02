// Lists and Sets
void main(){
  var scores=[1,4,1,56,23,2356,4,"Braison"];
  print(scores);

  List<int> grades=[12,42,12,44,65,22,43,13,23,54,22];
  print(grades[2]);
  grades[0]=1;
  print(grades);
  grades.add(500);
  print(grades);
  grades.remove(22);
  grades.remove(22);
  print(grades.length);
  grades.shuffle();
  print(grades);


// Sets
Set<String> names={'Braison','Wabwire','Daniel'};
names.add("james");
print(names);
print(names.length);

}