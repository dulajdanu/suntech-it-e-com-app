import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';
import 'package:suntech_it_e_com_app/features/home/bloc/products/cubit/products_cubit.dart';
import 'package:suntech_it_e_com_app/features/home/presentation/widgets/banner_widget.dart';
import 'package:suntech_it_e_com_app/features/home/presentation/widgets/categories_widget.dart';
import 'package:suntech_it_e_com_app/features/home/presentation/widgets/product_details_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextCustomWidget(
          text: 'Discover Your Best ',
          textStyle: AppConstants
              .headingTextStyle, //todo add the correct fontWeight here
          marginLeft: AppConstants.homePageHorizontalMargin,
        ),
        SizedBox(
          height: 23.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstants.homePageHorizontalMargin),
          child: Card(
            elevation: 5,
            color: AppConstants.lightBlackColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.h)),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xffACACAC),
                ),
                hintText: "Search Headphones",
                hintStyle: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffACACAC),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 28.h,
        ),
        SizedBox(
          // color: Colors.red,
          height: 189.h,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return const BannerWidget();
            },
            itemCount: 3,
            viewportFraction: 0.8,
            scale: 0.9,
            pagination: const SwiperPagination(),
          ),
        ),
        const CategoriesWidget(),
        Expanded(child: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            return state.maybeWhen(
              errorOccuredWhileLoading: (errorMessage) {
                return Center(
                  child: TextCustomWidget(
                    text: errorMessage,
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    containerAlignment: Alignment.center,
                  ),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: (products) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 30.w,
                  ),
                  // color: Colors.green,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: products
                          .map((productModel) =>
                              ProductDetailsCard(productModel: productModel))
                          .toList(),
                    ),
                  ),
                );
              },
              orElse: () {
                return const SizedBox();
              },
            );
          },
        )),
      ],
    );
  }
}
