import 'package:flutter/material.dart';

import '../DB/Database.dart';


class AllObligationData{

  static List<bool> boolList = List.filled(8, false);
  static List<String> valueList = ["えび","かに","くるみ","小麦","そば","卵","乳","落花生",];
  static List<String> valueCheck = [];
  static String hObligation = "";


  //追加
  String getValueString(){
    debugPrint(valueList.length.toString());
    return valueList.toString();
  }

  List<String> getValue(){
    return valueList;
  }

  List<bool> getBool(){
    return boolList;
  }



  void setObligationBool(List<bool> box){
    boolList.clear();
    boolList.addAll(box);
  }

  void HanteiObligation(){
    valueCheck.clear();
    for(int x = 0;x < boolList.length; x++){
      if(boolList[x] == true){
        valueCheck.add(valueList[x]);
      }
    }
    debugPrint(valueCheck.toString());
  }

  List<String> getValueCheck(){
    debugPrint("valueCheckのなかみ$valueCheck");
    return valueCheck;
  }

  String getValueCheckString(){
    hObligation = "";
    for(int x = 0;x < valueCheck.length; x++){
      if(x == 0 || x == valueCheck.length){
        hObligation = '$hObligation${valueCheck[x]}';
      }else{
        hObligation = '$hObligation\n${valueCheck[x]}';
      }
    }
    debugPrint(hObligation);
    return hObligation;
  }

  void AllResetObligation(){
    boolList = List.filled(8, false);
    valueCheck = [];
    hObligation = "";
  }

  //追加した

  final dbProvider = DBProvider.instance;

  late String foodid;
  late String foodname;

  AllObligationData({
    required this.foodid,
    required this.foodname,
  });

  AllObligationData.newAllUserData(){
    foodid = "";
    foodname = "";
  }

  Map<String, dynamic> toMap() =>{
    "foodid":foodid,
    "foodname":foodname,
  };

  factory AllObligationData.fromMap(Map<String, dynamic>  json) => AllObligationData(
    foodid: json["foodid"],
    foodname: json["foodname"],
  );
}