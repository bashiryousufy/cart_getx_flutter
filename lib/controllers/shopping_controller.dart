import 'package:get/get.dart';
import 'package:state_flutter_app/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));

    var productFromServer = [
      Product(
          id: 1,
          productName: 'Laptop',
          productImage: 'abc',
          productDescription: 'Lenovo Gaming Laptop',
          price: 1290),
      Product(
          id: 2,
          productName: 'Phone',
          productImage: 'abc',
          productDescription: 'Iphone 12 Pro Max ',
          price: 3600),
      Product(
          id: 3,
          productName: 'Monitor',
          productImage: 'abc',
          productDescription: 'Samsung 27" Inch 360Hz',
          price: 2500),
    ];

    products.value = productFromServer;
  }
}
