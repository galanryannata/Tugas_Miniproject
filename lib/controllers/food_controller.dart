
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/food_model.dart';

class FoodController extends GetxController {
  List<FoodModel> food = [
    FoodModel(
      id: "1",
      img: "assets/1.jpeg",
      title: "Nasi Goreng",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "10 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "2",
      img: "assets/2.jpg",
      title: "Nasi Goreng",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "20 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "3",
      img: "assets/3.jpg",
      title: "Gudeg",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "10 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "4",
      img: "assets/4.jpg",
      title: "sate",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "7 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "1",
      img: "assets/1.jpeg",
      title: "Nasi Goreng",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "10 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "2",
      img: "assets/2.jpg",
      title: "Nasi Goreng Spesial",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "20 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "3",
      img: "assets/3.jpg",
      title: "Gudeg",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "10 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "4",
      img: "assets/4.jpg",
      title: "sate",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "7 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "1",
      img: "assets/1.jpeg",
      title: "Nasi Goreng",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "10 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "2",
      img: "assets/2.jpg",
      title: "Nasi Goreng Spesial",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "20 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "3",
      img: "assets/3.jpg",
      title: "Gudeg",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "10 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "4",
      img: "assets/4.jpg",
      title: "sate",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "7 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "1",
      img: "assets/1.jpeg",
      title: "Nasi Goreng",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "10 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "2",
      img: "assets/2.jpg",
      title: "Nasi Goreng Spesial",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "20 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "3",
      img: "assets/3.jpg",
      title: "Gudeg",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "10 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
    FoodModel(
      id: "4",
      img: "assets/4.jpg",
      title: "sate",
      subtitle: "Enak",
      price: 10.000,
      deliveryTime: "7 min",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      quantity: 1,
    ),
  ];


  void add(int index) {
    if (food[index].quantity < 5  && food[index].quantity >= 0) {
      food[index].quantity++;
    } 
    update(["quantity"]);
  }

  
  void remove(int index) {
    if (food[index].quantity > 1 && food[index].quantity <= 9) {
      food[index].quantity--;
    } 
    update(["quantity"]);
  }

}
