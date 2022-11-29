import 'package:adopt_app/models/pet.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:adopt_app/providers/pets_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/pet.dart';

class PetServices {
  final dioclient = Dio();
  Future<List<Pet>> getPets() async {
    Dio client = new Dio();
    List<Pet> pets = [];
    try {
      Response res =
          await client.get("https://coded-pets-api-crud.herokuapp.com/pets");
      pets = (res.data as List).map((pet) => Pet.fromJson(pet)).toList();
    } on DioError catch (error) {
      print("It's a bad connection $error ");
    }
    return pets;
  }
}
