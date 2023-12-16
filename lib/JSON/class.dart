// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  late String name;
  late int age;
  late String email;
  User({
    required this.name,
    required this.age,
    required this.email,
  });

// fromMap converts map to --> object.  
  User.fromMap(Map<String, dynamic> mymap) {
    name = mymap["name"];
    age = mymap["age"];
    email = mymap["email"];
  }
   //JSON stands for JavaScript Object Notation
   
   // To map function.
  Map<String, dynamic> tomap(){
    return {
      "name": name,
      "age":age,
      "email":email
    };
  }
}
