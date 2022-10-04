import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suntech_it_e_com_app/features/home/presentation/widgets/category_name_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      // color: Colors.amber,
      margin: EdgeInsets.only(
        left: 30.w,
        top: 30.h,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            CategoryNameWidget(
              btnText: "All Product",
              isSelected: true,
            ),
            CategoryNameWidget(btnText: "Popular"),
            CategoryNameWidget(btnText: "Recent"),
            CategoryNameWidget(btnText: "Recent"),
            CategoryNameWidget(btnText: "Recent")
          ],
        ),
      ),
    );
  }
}
