import 'package:suntech_it_e_com_app/core/models/product_model/product_model.dart';
import 'package:suntech_it_e_com_app/core/type_defs/type_defs.dart';

abstract class HomeDatasource {
  Rvf<List<ProductModel>> getAllProducts();
}
