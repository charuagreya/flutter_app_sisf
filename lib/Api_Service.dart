import 'dart:convert';
import 'package:flutter_app_sisf2/Chapter_POJO.dart';
import 'package:flutter_app_sisf2/Pojo_question.dart';
import 'package:http/http.dart' as http;


class ApiService {

  Future<Product> getPost() async{
    final response = await http.get('http://www.sisfeducation.com/app/api/subjectList'); // the number is the id of the item being accessed
    return postFromJson(response.body);
  }

  Product postFromJson(String str) {
    final jsonData = json.decode(str);
    return Product.fromJson(jsonData);
  }

  static Future<String> getEmployees() async {
    final response =await http.get('http://www.sisfeducation.com/app/api/subjectList');
    if (response.statusCode == 200) {
      return await response.toString();
      //   return json.decode(response.body);

    } else {
      return null;
    }
  }


  Future<Chapter_POJO> getChapterList(sub_id) async{
    final response = await http.get('http://www.sisfeducation.com/app/api/chapterList?subject_id=$sub_id');
    return postFromJson_sub(response.body);
  }

  Future<Pojo_question> getQuestions_List(sub_id) async{
    final response = await http.get('http://www.sisfeducation.com/app/api/questionList?chapter_id=$sub_id');
    return postFromJson_questions(response.body);
  }

  Pojo_question postFromJson_questions(String str) {
    final jsonData = json.decode(str);
    return Pojo_question.fromJson(jsonData);
  }


  Chapter_POJO postFromJson_sub(String str) {
    final jsonData = json.decode(str);
    return Chapter_POJO.fromJson(jsonData);
  }

  Future loadProduct() async {
    String jsonProduct = await getEmployees();
    final jsonResponse = json.decode(jsonProduct);
    Product product = new Product.fromJson(jsonResponse);
    print(product.Responce[0].name);
  }

  static Future<bool> addEmployee(body) async {
    final response = await http
        .post('http://www.sisfeducation.com/app/api/subjectList', body: body);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }



}

class Product {
  final bool status;
  final String Error;
  final List<Image_Item> Responce;
  Product({this.status, this.Error, this.Responce});
  factory Product.fromJson(Map<String, dynamic> parsedJson){
    var list = parsedJson['Responce'] as List;
    print(list.runtimeType);
    List<Image_Item> imagesList = list.map((i) => Image_Item.fromJson(i)).toList();
    return Product(
        status: parsedJson['status'],
        Error: parsedJson['Error'],
        Responce: imagesList
    );
  }
}

class Image_Item {

  final String id;
  final String name;

  Image_Item({this.id, this.name});

  factory Image_Item.fromJson(Map<String, dynamic> parsedJson){
    return Image_Item(
        id:parsedJson['id'],
        name:parsedJson['name']
    );
  }
}
