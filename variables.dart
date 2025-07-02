// Control flow
void main(){
  List<int> scores=[12,89,73,28,12,43,43,12];

  for(int i=0;i<5;i++){
    print('The current value of i is ${scores[i]}');
  }

  for (int score in scores){
    if (score>50){
    print(score);

    }
  }
}