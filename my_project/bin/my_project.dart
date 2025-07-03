// import 'package:my_project/my_project.dart' as my_project;

// Asyc, await, future

void main() async{
  final post=await fetchPost();
  print(post.title);
  print(post.UserId);

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