import 'package:flutter/material.dart';

class FormControllers{
  final TextEditingController priceController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController bedroomController = TextEditingController();
  final TextEditingController bathroomController = TextEditingController();
  final TextEditingController sqmController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  resetControllers(){
    priceController.clear();
    addressController.clear();
    bedroomController.clear();
    bathroomController.clear();
    sqmController.clear();
    imageController.clear();
  }
}