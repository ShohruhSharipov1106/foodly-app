import 'package:foodly_app/constants/imports.dart';

class ResetEmailPage extends StatelessWidget {
  const ResetEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 18.0,
          ),
        ),
        title: const Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _titleTextField(context),
            // edit this
            primaryButtonCard(
              context,
              kActiveColor,
              "Send again",
              getHeight(8.0),
              () => print("Reset password"),
            ),
          ],
        ),
      ),
    );
  }

  Padding _titleTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getWidth(25.0),
        top: getHeight(24.0),
        right: getWidth(77.0),
        bottom: getHeight(27.0),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Reset email sent\n",
              style: Theme.of(context).textTheme.headline2,
            ),
            // edit this
            TextSpan(
              text:
                  "We have sent a instructions email to\nNawfazim@icloud.com.",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            TextSpan(
              text: "Having problem?",
              style: const TextStyle(
                color: kActiveColor,
                fontSize: 16.0,
              ),
              // edit this
              recognizer: TapGestureRecognizer()..onTap = () => print("object"),
            ),
          ],
        ),
      ),
    );
  }
}
