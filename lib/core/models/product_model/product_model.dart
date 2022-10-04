import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed

///This user model will contain  information about the [`product`]
///

class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String name,
    double? rating,
    double? actualPrice,
    double? sellingPrice,
    String? details,
    String? imageUrl,
  }) = _ProductModel;
  const ProductModel._();

  static const empty = ProductModel(
    actualPrice: 0,
    details: "",
    id: "",
    imageUrl: "",
    name: "",
    rating: 0,
    sellingPrice: 0,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  /// Convenience getter to determine whether the product is empty.
  bool get isEmpty => this == ProductModel.empty;

  /// Convenience getter to determine whether the product is not empty.
  bool get isNotEmpty => this != ProductModel.empty;
}
