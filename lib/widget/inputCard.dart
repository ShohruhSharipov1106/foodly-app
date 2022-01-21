import 'package:foodly_app/constants/imports.dart';

Container inputFieldCard(BuildContext context) {
  return Container(
    height: getHeight(65.0),
    width: getWidth(335.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.0),
      color: kInputColor,
      border: Border.all(
        width: 1.0,
        color: context.watch<InputProvider>().isOnTap == false
            ? kBodyTextColor
            : kBgColor,
      ),
    ),
    margin: EdgeInsets.symmetric(
      horizontal: getWidth(20.0),
      vertical: getHeight(7.0),
    ),
    padding: EdgeInsets.symmetric(
      vertical: context.watch<InputProvider>().isOnTap == false
          ? getHeight(18.0)
          : getHeight(0.0),
      horizontal: getWidth(20.0),
    ),
    child: TextField(
      controller: context.watch<InputProvider>().emailFieldController,
      keyboardType: TextInputType.emailAddress,
      cursorColor: kActiveColor,
      cursorWidth: 1.0,
      obscureText: false,
      decoration: InputDecoration(
        labelText: "Email Address",
        suffix: SvgPicture.asset(
          "assets/icons/Phone.svg",
          height: getHeight(18.0),
          width: getWidth(10.0),
          fit: BoxFit.cover,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      onTap: () => context.read<InputProvider>().isOnTapFunc(),
      onEditingComplete: () =>
          context.read<InputProvider>().isEditingCompleteFunc(),
    ),
  );
}
