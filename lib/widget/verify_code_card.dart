import 'package:foodly_app/constants/imports.dart';

DecoratedBox verifyCodeCard(
  BuildContext context,
  bool isEnabled,
) {
  return DecoratedBox(
    decoration: const BoxDecoration(
      color: kBgColor,
      border: Border(
        bottom: BorderSide(
          color: kBodyTextColor,
        ),
      ),
    ),
    child: SizedBox(
      height: getHeight(50.0),
      width: getWidth(50.0),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getWidth(18.0),
          vertical: getHeight(13.0),
        ),
        child: TextField(
          keyboardType: TextInputType.number,
          onChanged: (value) => context.read<InputProvider>().isOnTapVerify(),
          decoration: InputDecoration(enabled: isEnabled),
          controller: context.watch<InputProvider>().verifyCodeFieldController,
        ),
      ),
    ),
  );
}
