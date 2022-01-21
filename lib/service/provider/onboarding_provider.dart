import 'package:foodly_app/constants/imports.dart';

class OnBoardingProvider extends ChangeNotifier {
  int kActiveIndex = 1;

  incrementIndex() {
    kActiveIndex >= 3 ? kActiveIndex = 3 : kActiveIndex += 1;
    notifyListeners();
  }
}
