import 'dart:ffi';

class User{

  //appusers
  final String app_id;
  final String app_name;
  final String app_phone;
  final String app_email; 
  final String app_profile;
  final Float app_credit;
  final String app_password;

  //appvehicle
  final String app_plateno;
  final String vehicle_color;
  final String vehicle_brand;

  //appcompound
  final String compoundid;
  final DateTime compound_date;
  final String compound_desc;
  final String payment_status;
  final Float compound_amount;

  User({required this.app_id, required this.app_name, required this.app_phone, required this.app_email, required this.app_profile, required this.app_credit, required this.app_password, required this.app_plateno, required this.vehicle_color, required this.vehicle_brand, required this.compoundid, required this.compound_date, required this.compound_desc, required this.payment_status, required this.compound_amount});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      app_id: json['app_id'], 
      app_name: json['app_name'], 
      app_phone: json['app_phone'], 
      app_email: json['app_email'], 
      app_profile: json['app_profile'], 
      app_credit: json['app_credit'], 
      app_password: json['app_password'], 
      app_plateno: json['app_plateno'], 
      vehicle_color: json['vehicle_color'], 
      vehicle_brand: json['vehicle_brand'], 
      compoundid: json['compoundid'], 
      compound_date: json['compound_date'], 
      compound_desc: json['compound_desc'], 
      payment_status: json['payment_status'], 
      compound_amount: json['compound_amount']
      );
  }

  Map<String, dynamic> toJson(){
    return{
      'app_id': app_id,
      'app_name': app_name,
      'app_phone': app_phone,
      'app_email': app_email,
      'app_profile': app_profile,
      'app_credit': app_credit,
      'app_password': app_password,
      'app_plateno': app_plateno,
      'vehicle_color': vehicle_color,
      'vehicle_brand': vehicle_brand,
      'compoundid': compoundid,
      'compound_date': compound_date,
      'compound_desc': compound_desc,
      'payment_status': payment_status,
      'compound_amount': compound_amount
    };
  }

}