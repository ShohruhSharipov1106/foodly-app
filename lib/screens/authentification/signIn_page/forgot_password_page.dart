import 'package:foodly_app/constants/imports.dart';
import 'package:foodly_app/screens/authentification/signIn_page/reset_email_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

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
            inputFieldCard(
              context,
              context.watch<InputProvider>().emailFieldController,
              TextInputType.emailAddress,
              "Email Address",
              "assets/icons/Phone.svg",
            ),
            primaryButtonCard(
              context,
              kActiveColor,
              "Reset password",
              getHeight(8.0),
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResetEmailPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _titleTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getWidth(20.0),
        top: getHeight(24.0),
        right: getWidth(81.0),
        bottom: getHeight(27.0),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Forgot password\n",
              style: Theme.of(context).textTheme.headline2,
            ),
            TextSpan(
              text:
                  "Enter your email address and we will\nsend you a reset instructions.",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
