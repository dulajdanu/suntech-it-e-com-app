import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suntech_it_e_com_app/core/models/product_model/product_model.dart';
import 'package:suntech_it_e_com_app/features/home/data/repositories/home_repository.dart';
part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final HomeRepository _homeRepository;

  ProductsCubit({required HomeRepository homeRepository})
      : _homeRepository = homeRepository,
        super(const ProductsState.initial()) {
    fetchAllProducts();
  }

  Future<void> fetchAllProducts() async {
    final result = await _homeRepository.getAllProducts();

    result.fold(
      (l) {
        //
        emit(ProductsState.errorOccuredWhileLoading(l.message));
      },
      (products) {
        //
        emit(ProductsState.loaded(products));
        fetchProductImages();
      },
    );
  }

  Future<void> fetchProductImages() async {
    await state.whenOrNull(
      loaded: (products) async {
        products.asMap().forEach((index, product) async {
          final result = await _homeRepository.getProductImage(product.id);

          result.fold(
            (l) {
              //
            },
            (imageUrl) {
              //

              var temp = state.whenOrNull(
                loaded: (products) => products,
              );

              if (temp != null) {
                temp[index] = product.copyWith(
                  imageUrl: imageUrl,
                );
                emit(ProductsState.loaded(temp));
              }
            },
          );
        });
      },
    );
  }
}
