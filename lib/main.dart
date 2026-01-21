import 'package:flutter/material.dart';

void main() async{
    print("Hi Mom");
    print(await getFutureString());
    print("Goodbyew");
}

Future<String> getFutureString() {
  return Future.delayed(Duration(seconds: 2), (){
    return "You left";
  });
}


