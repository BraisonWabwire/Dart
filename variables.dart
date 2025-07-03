// Asyc, await, future

void main(){
  fetchPost().then((p){
    print(p.title);
    print(p.UserId);
  });

}
Future<Post> fetchPost(){
  const delay=Duration(seconds: 3);

  return Future.delayed(delay,(){
      return Post('mypost', 123);
  });
}

class Post{

  String title;
  int UserId;

  Post(this.title, this.UserId);
}