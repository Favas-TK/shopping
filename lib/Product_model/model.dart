// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
    Products({
        this.name,
        this.image,
        this.price,
        this.discription,
        this.discount,
    });

    String? name;
    String ?image;
    String ?price;
    String ?discription;
    String ?discount;

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        name: json["Name"],
        image: json["Image"],
        price: json["Price"],
        discription: json["Discription"],
        discount: json["Discount"],
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Image": image,
        "Price": price,
        "Discription": discription,
        "Discount": discount,
    };
}
