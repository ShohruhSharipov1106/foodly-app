import 'package:foodly_app/constants/imports.dart';

class ConfirmPhone extends StatelessWidget {
  const ConfirmPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: getHeight(41.0),
            ),
            Text(
              "Verify phone number",
              style: Theme.of(context).textTheme.headline3,
            ),
            Opacity(
              opacity: 0.74,
              child: Text(
                "Enter the 4-Digit code sent to you at\n",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            // edit this
            Text(
              "",
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(41.0),
                bottom: getHeight(34.0),
                left: getWidth(57.0),
                right: getWidth(58.0),
              ),
              child: SizedBox(
                height: getHeight(50.0),
                width: getWidth(260.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    verifyCodeCard(
                        context,
                        context.watch<InputProvider>().verifyCodeList.isEmpty
                            ? true
                            : false),
                    verifyCodeCard(
                        context,
                        context.watch<InputProvider>().verifyCodeList.length ==
                                1
                            ? true
                            : false),
                    verifyCodeCard(
                        context,
                        context.watch<InputProvider>().verifyCodeList.length ==
                                2
                            ? true
                            : false),
                    verifyCodeCard(
                        context,
                        context.watch<InputProvider>().verifyCodeList.length ==
                                3
                            ? true
                            : false),
                  ],
                ),
              ),
            ),
            primaryButtonCard(
              context,
              kActiveColor,
              "Continue",
              0,
              () => const EnterAddressPage(),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(24.0),
                bottom: getHeight(34.0),
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Didn’t receive code? ",
                      style: TextStyle(
                        color: kMainTextColor.withOpacity(0.64),
                        fontSize: 12.0,
                      ),
                    ),

                    // edit this
                    TextSpan(
                      text: "Resend Again.",
                      style: const TextStyle(
                        color: kActiveColor,
                        fontSize: 12.0,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => print("Resend code"),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "By Signing up you agree to our Terms\nConditions & Privacy Policy.",
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
