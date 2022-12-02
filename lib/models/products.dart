import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:provider/provider.dart';

import '../Provider/AuthProvider/dbProvider.dart';

class AllProducts {
  int? count;
  List<Data>? data;

  AllProducts({this.count, this.data});

  AllProducts.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? description;
  int? isAvailable;
  String? productPicture;
  int? cost;
  String? category;
  String? date;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.sId,
      this.description,
      this.isAvailable,
      this.productPicture,
      this.cost,
      this.category,
      this.date,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    description = json['description'];
    isAvailable = json['isAvailable'];
    productPicture = json['productPicture'];
    cost = json['cost'];
    category = json['category'];
    date = json['date'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['description'] = this.description;
    data['isAvailable'] = this.isAvailable;
    data['productPicture'] = this.productPicture;
    data['cost'] = this.cost;
    data['category'] = this.category;
    data['date'] = this.date;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
































// class ProductDetails {
//   String? sId;
//   String? description;
//   int? isAvailable;
//   String? productPicture;
//   int? cost;
//   String? category;
//   String? date;
//   String? createdAt;
//   String? updatedAt;
//   int? iV;

//   ProductDetails(
//       {this.sId,
//       this.description,
//       this.isAvailable,
//       this.productPicture,
//       this.cost,
//       this.category,
//       this.date,
//       this.createdAt,
//       this.updatedAt,
//       this.iV});

//   ProductDetails.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     description = json['description'];
//     isAvailable = json['isAvailable'];
//     productPicture = json['productPicture'];
//     cost = json['cost'];
//     category = json['category'];
//     date = json['date'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     iV = json['__v'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['description'] = this.description;
//     data['isAvailable'] = this.isAvailable;
//     data['productPicture'] = this.productPicture;
//     data['cost'] = this.cost;
//     data['category'] = this.category;
//     data['date'] = this.date;
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['__v'] = this.iV;
//     return data;
//   }
// }

// // List result = [];

// // final productsProvider = Provider<List<ProductDetails>>((ref) {
// //   return result;
// // });

// Future<List<ProductDetails>> fetchAllProducts() async {
//   // http.Client client;
//   // List<ProductDetails> products = [];
//   const String url = "https://gofarmng.herokuapp.com/api/v1/findall";
//   String accessToken = await DatabaseProvider().getToken();
//   print("This is the gotten token: $accessToken");
//   final headers = {
//     "Content-type": "application/json; charset=utf-8",
//     "Accept": "/",
//     "Authorization": "Bearer $accessToken",
//   };

//   final response = await http.get(
//     Uri.parse(url),
//     headers: headers,
//   );
//   if (response.statusCode == 200) {
//     result = jsonDecode(response.body)["data"];
//     final data = result.map((e) => ProductDetails.fromJson(e)).toList();
//     print(data[0].category);
//     return data;
//     // return result.map((e) => ProductDetails.fromJson(e)).toList();
//   } else {
//     throw Exception(response.reasonPhrase);
//   }
// }
