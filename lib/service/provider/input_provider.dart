import 'package:foodly_app/constants/imports.dart';

class InputProvider extends ChangeNotifier {
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController fullNameFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  TextEditingController phoneNumberFieldController = TextEditingController();
  TextEditingController verifyCodeFieldController = TextEditingController();

  List verifyCodeList = [];
  String verifyCode = "";

  bool isOnTap = false;
  isOnTapFunc() {
    isOnTap = true;
    notifyListeners();
  }

  isEditingCompleteFunc() {
    isOnTap = false;
    notifyListeners();
  }

  isOnTapVerify() {
    if (verifyCodeList.length < 4) {
      verifyCodeList.add(verifyCodeFieldController.text);
      verifyCodeFieldController.clear();
    } else {
      verifyCode = verifyCodeList.join();
    }
    notifyListeners();
  }
}
