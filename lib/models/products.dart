import 'dart:convert';
import "package:http/http.dart" as http;

import '../Provider/AuthProvider/dbProvider.dart';

class ProductDetails {
  final String title;
  final String description;
  final String category;
  final int cost;
  final String id;
  final int isAvailable;
  final String productPicture;
  ProductDetails({
    required this.title,
    required this.description,
    required this.category,
    required this.cost,
    required this.id,
    required this.isAvailable,
    required this.productPicture,
  });

  ProductDetails copyWith({
    String? title,
    String? description,
    String? category,
    int? cost,
    String? id,
    int? isAvailable,
    String? productPicture,
  }) {
    return ProductDetails(
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      cost: cost ?? this.cost,
      id: id ?? this.id,
      isAvailable: isAvailable ?? this.isAvailable,
      productPicture: productPicture ?? this.productPicture,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'category': category});
    result.addAll({'cost': cost});
    result.addAll({'_id': id});
    result.addAll({'isAvailable': isAvailable});
    result.addAll({'productPicture': productPicture});

    return result;
  }

  factory ProductDetails.fromMap(Map<String, dynamic> map) {
    return ProductDetails(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      category: map['category'] ?? '',
      cost: map['cost']?.toInt() ?? 0,
      id: map['_id'] ?? '',
      isAvailable: map['isAvailable']?.toInt() ?? 0,
      productPicture: map['productPicture'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDetails.fromJson(String source) =>
      ProductDetails.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductDetails(title: $title, description: $description, category: $category, cost: $cost, id: $id, isAvailable: $isAvailable, productPicture: $productPicture)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductDetails &&
        other.title == title &&
        other.description == description &&
        other.category == category &&
        other.cost == cost &&
        other.id == id &&
        other.isAvailable == isAvailable &&
        other.productPicture == productPicture;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        category.hashCode ^
        cost.hashCode ^
        id.hashCode ^
        isAvailable.hashCode ^
        productPicture.hashCode;
  }
}

Future<List<ProductDetails>> fetchAllProducts() async {
  // http.Client client;
  List<ProductDetails> products = [];
  const String url = "https://gofarmng.herokuapp.com/api/v1/findall";
  String accessToken = await DatabaseProvider().getToken();
  final headers = {
    "Content-type": "application/json; charset=utf-8",
    "Accept": "/",
    "Authorization": "Bearer $accessToken",
  };

  try {} catch (e) {
    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    if (response.statusCode == 200) {
      List productsList = jsonDecode(response.body);
      for (var item in productsList) {
        products.add(ProductDetails.fromJson(item));
      }
      return products;
    } else {
      throw Exception("Failed to load Products");
    }
  }
  return products;
}
