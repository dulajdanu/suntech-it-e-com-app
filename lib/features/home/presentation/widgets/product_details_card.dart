import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suntech_it_e_com_app/core/constants/app_constants.dart';
import 'package:suntech_it_e_com_app/core/models/product_model/product_model.dart';
import 'package:suntech_it_e_com_app/core/widgets/custom_widgets.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    Key? key,
    required this.productModel,
  }) : super(key: key);
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: AppConstants.lightBlackColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.h)),
      margin: EdgeInsets.only(
        right: 22.w,
      ),
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 14.w,
            vertical: 10.h,
          ),
          height: 230.h,
          width: 157.w,
          child: Column(
            children: [
              SizedBox(
                height: 24.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(productModel.name,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.ltr,
                          style: const TextStyle(
                            color: Colors.white,
                          )),
                    ),
                    const Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                height: 24.h,
                // color: Colors.orange,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    TextCustomWidget(
                      text: productModel.rating.toString(),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(width: 5.w),
                    const Icon(
                      Icons.star,
                      color: Color(0xffE7B53D),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  // color: Colors.grey,
                  alignment: Alignment.center,
                  child: CachedNetworkImage(
                    imageUrl: productModel.imageUrl ??
                        "https://icon-library.com/images/products-icon-png/products-icon-png-9.jpg",
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              SizedBox(
                height: 48.h,
                // color: Colors.yellow,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.blueAccent,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                // color: Colors.blueAccent,
                                alignment: Alignment.center,
                                child: TextCustomWidget(
                                  text: "\$89.00",
                                  textStyle: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff585858),
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.greenAccent,
                                alignment: Alignment.center,
                                child: TextCustomWidget(
                                  text: "\$59.00",
                                  textStyle: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffECEBEB),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff5D9CC6),
                              Color(0xff4E5BB3),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(
                            4.h,
                          )),
                      margin: EdgeInsets.only(
                        left: 14.w,
                        // right: 14.w,
                      ),
                      height: 28.h,
                      width: 28.h,
                      // color: Colors.greenAccent,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                            4.h,
                          )),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
