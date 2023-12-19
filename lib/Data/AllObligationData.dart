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


  /*
//おためし
  static List<bool> Boo = [];
  Map<String, String> Gimu = {"HG1":"えび", "HG2":"かに", "HG3":"くるみ", "HG4":"小麦", "HG5":"そば", "HG6":"卵", "HG7":"乳", "HG8":"落花生",};

//全てのキーをリストに格納
  List<String> keyList = Gimu.keys.toList();

//チェックされたvalueを格納するリスト
  static List<String> CheckValue = [];
  static String HObligation = "";


  void setObligationBool1(List<bool> box){
    Boo.clear();
    Boo.addAll(box);
  }



  void HanteiObligation1(){
    CheckValue.clear();
    for(int x = 0;x < Boo.length; x++){
      if(Boo[x] == true){
        String CheckKey = keyList[x];
        debugPrint(CheckKey.toString());
        CheckValue.add(Gimu[x]!);
    //ここでDBにCheckKeyを渡す（insert）
      }
    }
    debugPrint(CheckValue.toString());
  }
/*

void HanteiObligation(){

CheckValue.clear();

for(int x = 0;x < Boo.length; x++){

if(Boo[x] == true){

CheckValue.add(IndexValue[x]);

　　}

　}

debugPrint(CheckValue.toString());

}

*/

  String getCheckValue(){
    HObligation = "";
    for(int x = 0;x < CheckValue.length; x++){
      if(x == 0 || x == CheckValue.length){
        HObligation = '$HObligation${CheckValue[x]}';
      }else{
        HObligation = '$HObligation\n${CheckValue[x]}';
      }
    }
    debugPrint(HObligation);
    return HObligation;
  }
 */

}