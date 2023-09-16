import 'dart:convert';
import 'package:neoshop/constant/utils.dart';
import 'package:http/http.dart' as http;

Future userLogin(String email, String password) async{
  final response = await http.post('http://localhost:3000/cust/login' as Uri,
  headers: {"Accept":"Application/json"},
  body: {'email':email,'password':password}
  );
  
  var decodedData = jsonDecode(response.body);
  return decodedData;
}

Future userRegister(String name, String username, String email, String phoneno, String password) async{
  final response = await http.post('${Utils.baseUrl}/cust/register' as Uri, 
  headers: {"Accept":"Application/json"},
  body: {'name':name,'username':username,'email':email,'phoneno':phoneno,'password':password});

  var decodedData = jsonDecode(response.body);
  return decodedData; 
}