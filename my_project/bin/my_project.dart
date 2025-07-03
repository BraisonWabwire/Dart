// import 'package:my_project/my_project.dart' as my_project;

// Asyc, await, future
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


void main() async{
  final post= await fetchPost();
  print(post.title);
  print(post.userId);

}
Future<Post> fetchPost() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');

  var response = await http.get(url);

  // print(response.body);
  print('Status Code: ${response.statusCode}');
  Map <String, dynamic> data=convert.jsonDecode(response.body);

  return Post(data["title"],data["UserID"]);

} 

class Post{

  String title;
  int userId;

  Post(this.title, this.userId);
}
