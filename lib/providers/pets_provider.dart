import 'package:adopt_app/models/pet.dart';
import 'package:flutter/material.dart';
import 'package:adopt_app/services/pets_services.dart';
import '../models/pet.dart' show Pet;

class PetsProvider extends ChangeNotifier {
  List<Pet> pets = [
    Pet(
        name: "Lucifurr",
        image: "https://i.ibb.co/P6VJ4pZ/smile-cat-1.png",
        age: 2,
        gender: "male")
  ];

  // Future<List> getPetsProvider() async {
  //   notifyListeners();
  //   pets = await getPets();
  //   return pets;
  // }

  void addPets(String name, int age, String gender) async {
    pets = await PetServices().getPets();
    notifyListeners();
  }

  Future get() async {
    pets = await PetServices().getPets();
    notifyListeners();
  }
}
