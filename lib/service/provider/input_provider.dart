import 'package:foodly_app/constants/imports.dart';

class InputProvider extends ChangeNotifier {
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController fullNameFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  bool isOnTap = false;
  isOnTapFunc() {
    isOnTap = true;
    notifyListeners();
  }

  isEditingCompleteFunc() {
    isOnTap = false;
    notifyListeners();
  }
}
