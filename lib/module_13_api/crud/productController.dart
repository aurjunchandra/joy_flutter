
import 'dart:convert';
import 'dart:io';

import 'package:joy_flutter/module_13_api/crud/model/productmodel.dart';
import 'package:joy_flutter/module_13_api/crud/utils/urls.dart';
import 'package:http/http.dart' as http;

class ProductController{
  List<Data> products = [];
  bool isLoading = true;

  Future fetchProducts() async {
    final response = await http.get(Uri.parse(Urls.readProduct));
    if(response.statusCode ==200){
      isLoading = false;
       final data = jsonDecode(response.body);
       ProductModel model = ProductModel.fromJson(data);
       products = model.data ?? [];
    }
  }

  //create product
  Future<bool> createProduct(Data data)  async {
    final response = await http.post(Uri.parse(Urls.createProduct),

    headers: {
          'Content-Type': 'application/json'
    },

    body: jsonEncode(
        {
      "ProductName": data.productName,
      "ProductCode": DateTime.now().microsecondsSinceEpoch ,
      "Img": data.img ,
      "Qty": data.qty,
      "UnitPrice": data.unitPrice,
      "TotalPrice": data.totalPrice,
    }
    )
    );

    print(response.body);
    if(response.statusCode==200){
      return true;
    } else{
      return false;
    }
  }
//update product
  Future<bool> updateProduct(String  productId, Data data) async {
    final response = await http.post(
      Uri.parse(Urls.updateProduct(productId)),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data.toJson()),
    );
    return response.statusCode == 200;
  }

//delete product
  Future<bool> deleteProduct(String productId) async {
    final response = await http.get(Uri.parse(Urls.deleteProduct(productId)));
    if(response.statusCode == 200){
      return true;
    }else{
      return false;
    }
  }

}