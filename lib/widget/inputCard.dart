import 'package:foodly_app/constants/imports.dart';

Container inputFieldCard(BuildContext context, TextEditingController kontroller,
    TextInputType keyboardtype, String labeltextfield, String suffixField,
    {bool isObsecure = false}) {
  return Container(
    height: context.watch<InputProvider>().isOnTap == false
        ? getHeight(54.0)
        : getHeight(65.0),
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
          ? getHeight(8.0)
          : getHeight(0.0),
      horizontal: getWidth(20.0),
    ),
    child: TextField(
      controller: kontroller,
      keyboardType: keyboardtype,
      cursorColor: kActiveColor,
      cursorWidth: 1.0,
      obscureText: isObsecure,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        labelText: labeltextfield,
        suffix: SvgPicture.asset(
          suffixField,
          height: getHeight(18.0),
          width: getWidth(10.0),
          fit: BoxFit.cover,
        ),
      ),
      onTap: () => context.read<InputProvider>().isOnTapFunc(),
      onEditingComplete: () =>
          context.read<InputProvider>().isEditingCompleteFunc(),
    ),
  );
}
