import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:joy_flutter/module_13_api/crud/model/productmodel.dart';
import 'package:joy_flutter/module_13_api/crud/productController.dart';
class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  ProductController productController = ProductController();

  //List products = [];
  //bool isLoading = true;

  @override
  void initState(){
    super.initState();
   // fetchProducts();
    fetchData();
  }

  Future fetchData() async {
   await productController.fetchProducts();
   if(mounted) setState(() {
   });
  }

  productDialog(){
    TextEditingController productNameController = TextEditingController();
    TextEditingController productIMGController = TextEditingController();
    TextEditingController productQTYController = TextEditingController();
    TextEditingController productUnitPriceController = TextEditingController();
    TextEditingController productTotalPriceController = TextEditingController();

    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Add Product'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: productNameController,

              decoration: InputDecoration(
                labelText: 'Name'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: productIMGController,
              decoration: InputDecoration(
                  labelText: 'Image'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: productQTYController,
              decoration: InputDecoration(
                  labelText: 'Qty'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: productUnitPriceController,
              decoration: InputDecoration(
                  labelText: 'Unit Price'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller:productTotalPriceController  ,
              decoration: InputDecoration(
                  labelText: 'TotalPrice'
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Cancel')),
                ElevatedButton(onPressed: () async {
                  productController.createProduct(Data(
                    productName: productNameController.text,
                    img: productIMGController.text,
                    qty: int.parse(productQTYController.text) ,
                    unitPrice: int.parse(productUnitPriceController.text),
                    totalPrice: int.parse(productTotalPriceController.text),
                  ));
                  await fetchData();
                  Navigator.pop(context);
                }, child: Text('Save'))

              ],
            )
          ],
        ),
      )
    ));
  }

// update
  updateDialog(Data item) {
    TextEditingController productNameController =
    TextEditingController(text: item.productName);
    TextEditingController productIMGController =
    TextEditingController(text: item.img);
    TextEditingController productQTYController =
    TextEditingController(text: item.qty.toString());
    TextEditingController productUnitPriceController =
    TextEditingController(text: item.unitPrice.toString());
    TextEditingController productTotalPriceController =
    TextEditingController(text: item.totalPrice.toString());

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Update Product'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: productNameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: productIMGController,
                decoration: InputDecoration(labelText: 'Image'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: productQTYController,
                decoration: InputDecoration(labelText: 'Qty'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: productUnitPriceController,
                decoration: InputDecoration(labelText: 'Unit Price'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: productTotalPriceController,
                decoration: InputDecoration(labelText: 'Total Price'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Cancel')),
                  ElevatedButton(
                    onPressed: () async {
                      // Prepare updated data
                      Data updatedProduct = Data(
                        sId: item.sId,
                        productName: productNameController.text,
                        img: productIMGController.text,
                        qty: int.parse(productQTYController.text),
                        unitPrice: int.parse(productUnitPriceController.text),
                        totalPrice: int.parse(productTotalPriceController.text),
                      );

                      // Call update API
                      await productController
                          .updateProduct(item.sId.toString(), updatedProduct);

                      await fetchData();

                      Navigator.pop(context);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Product updated successfully')),
                      );
                    },
                    child: Text('Update'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Product from API'),
      ),
      body: productController.isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemCount: productController.products.length,

            itemBuilder: (context, index){
              final item = productController.products[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    child: Column(

                      children: [
                        SizedBox(
                          height: 100,
                          child: Image.network(item.img.toString()),
                        ),
                        Text(item.productName.toString(),
                        style: TextStyle(fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                        ),
                        Text('Price: \$${item.unitPrice} | Qty: ${item.qty}'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            IconButton(
                                onPressed: (){
                                  setState(() {
                                    updateDialog(item);

                                  });

                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.orange,)),


                            IconButton(
                                onPressed: () async {
                                  await productController.deleteProduct(item.sId.toString()).then((value) async {
                                    if(value){
                                      await fetchData();
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Product deleted'))
                                      );
                                    }else{
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Something went wrong'))
                                      );
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,)
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        productDialog();
      },
      child: Icon(Icons.add),
      ),

    );
  }
}
