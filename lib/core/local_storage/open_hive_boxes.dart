import 'package:hive/hive.dart';
import 'package:suntech_it_e_com_app/core/local_storage/box_names.dart';

openHiveBoxes() async {
  //todo if hive is not used remove it
  await Hive.openBox(BoxNames.userData);
}
