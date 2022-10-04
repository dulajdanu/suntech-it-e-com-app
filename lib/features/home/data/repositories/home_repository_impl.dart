import 'package:dartz/dartz.dart';
import 'package:suntech_it_e_com_app/core/errors/exceptions/exceptions.dart';
import 'package:suntech_it_e_com_app/core/errors/failures/failure.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';
import 'package:suntech_it_e_com_app/core/models/product_model/product_model.dart';
import 'package:suntech_it_e_com_app/features/home/data/datasources/home_datasource.dart';
import 'package:suntech_it_e_com_app/features/home/data/repositories/home_repository.dart';

class HomeRepsitoryImpl implements HomeRepository {
  final HomeDatasource _homeDatasource;
  HomeRepsitoryImpl({required HomeDatasource homeDatasource})
      : _homeDatasource = homeDatasource;
  @override
  RvfEither<List<ProductModel>> getAllProducts() async {
    try {
      final result = await _homeDatasource.getAllProducts();
      return right(result);
    } on ProductsFetchException catch (e) {
      return left(Failure.productsFetch(e.message));
    }
  }
}
