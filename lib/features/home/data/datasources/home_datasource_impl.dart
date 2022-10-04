import 'dart:convert';
import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/error_messages.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/core/models/product_model/product_model.dart';
import 'package:suntech_it_e_com_app/features/home/data/datasources/home_datasource.dart';
import 'package:http/http.dart' as http;

class HomeDatasourceImpl implements HomeDatasource {
  final FlutterSecureStorage _flutterSecureStorage;
  HomeDatasourceImpl({required FlutterSecureStorage flutterSecureStorage})
      : _flutterSecureStorage = flutterSecureStorage;
  @override
  Rvf<List<ProductModel>> getAllProducts() async {
    try {
      final token = await _flutterSecureStorage.read(
        key: 'token',
      );
      final response = await http.get(
        Uri.parse('https://qa.tellnshare.co/demo/api/v1/product/list'),
        headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
      );

      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        return (jsonResponse['body']['data'] as List)
            .map((e) => ProductModel.fromJson(e))
            .toList();
      } else {
        throw Exceptions.productsFetch(jsonResponse['message']);
      }
    } on ProductsFetchException catch (e) {
      throw Exceptions.productsFetch(e.message);
    } catch (e) {
      throw const Exceptions.productsFetch(
          ErrorMessages.productsFetchErrorMessage);
    }
  }

  @override
  Rvf<String> getProductImage(String productID) async {
    try {
      final token = await _flutterSecureStorage.read(
        key: 'token',
      );
      final response = await http.get(
        Uri.parse(
            'https://qa.tellnshare.co/demo/api/v1/product/image/$productID'),
        headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
      );

      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        return "";
      } else {
        throw Exceptions.fetchProductImage(jsonResponse['message']);
      }
    } on ProductsFetchException catch (e) {
      throw Exceptions.fetchProductImage(e.message);
    } catch (e) {
      throw const Exceptions.fetchProductImage(
          ErrorMessages.productsFetchErrorMessage);
    }
  }
}
