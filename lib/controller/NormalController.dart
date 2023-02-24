import 'package:findaway/common/variable/DataList.dart';
import 'package:get/get.dart';

class NormalController extends GetxController {
  var select = "".obs;
  var data = [].obs;
  var isFileter = false.obs;

  getSelect(value) {
    select.value = value;
    data.clear();
    isFileter.value = false;
  }

  getSelectedList(value) {
    isFileter.value = true;
    data.value.clear();
    for (var i = 0; i < dataList.length; i++) {
      if (dataList[i]['category']!
          .toLowerCase()
          .contains(value.toString().toLowerCase())) {
        data.add(dataList[i]);
      }
    }
    print(data.length);
  }
}
