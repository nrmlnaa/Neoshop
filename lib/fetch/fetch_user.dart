import 'dart:convert';  
import 'package:neoshop/models/user.dart';
import 'package:neoshop/main.dart';
//mport 'package:evo/token.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

//USER LOGIN 
Future<void> loginUser(BuildContext context, String app_email, String app_password, Function updateState) async{
  try{
    //make a post request to the login endpoint
    final response = await http.post(
      Uri.parse("http://localhost:5003/user/login"), 
      body: jsonEncode({
        'user_email': app_email,
        'user_pass': app_password,
      }),
      headers: {'Content-Type':'application/json',},
    );
    if(response.statusCode==200){
      final token = jsonDecode(response.body)['token'];
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);

      //navigate
      Navigator.pushReplacementNamed(context, '/home_page', arguments: app_email);
    }else{
      //login not successful
      updateState("Invalid email or password", false);
    }
  }catch(error){
    updateState('An error occured during login', false);
  }finally{
    updateState('', false);
  }
  //test
}

//REGISTER
Future<void> insertData(String app_name, String app_email, String app_phone, String app_password) async{
  final apiurl = Uri.parse("http://localhost:5003/user/register");

  final response = await http.post(
    apiurl,
    headers: {'Content-Type':'application/json'},
    body: jsonEncode({
      'app_name':app_name,
      'app_email':app_email,
      'app_phone':app_phone,
      'app_password':app_password
    })
  );
}