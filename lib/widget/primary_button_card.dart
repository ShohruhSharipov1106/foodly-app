import 'package:foodly_app/constants/imports.dart';

Padding primaryButtonCard(
  BuildContext context,
  Color cardColor,
  String cardText,
  double verticalPadding,
  void Function() cardFunction,
) {
  
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: getWidth(20.0),
      vertical: verticalPadding,
    ),
    child: InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: cardColor,
        ),
        height: getHeight(48.0),
        width: getWidth(335.0),
        alignment: Alignment.center,
        child: Text(
          cardText,
          style: Theme.of(context).textTheme.button,
        ),
      ),
      onTap: cardFunction,
    ),
  );
}
