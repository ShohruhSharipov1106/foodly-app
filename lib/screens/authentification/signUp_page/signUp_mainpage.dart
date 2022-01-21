import 'package:foodly_app/constants/imports.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
        title: const Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(20.0),
                top: getHeight(24.0),
                right: getWidth(97.0),
                bottom: getHeight(27.0),
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Create Account\n",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    TextSpan(
                      text:
                          "Enter your Name, Email and Password\nfor sign up.",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    TextSpan(
                      text: "Already have account?",
                      style: const TextStyle(
                        color: kActiveColor,
                        fontSize: 16.0,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            ),
            primaryButtonCard(
              context,
              kActiveColor,
              "Sign in",
              getHeight(8.0),
              () => print("Sign in"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(45.0),
                vertical: getHeight(8.0),
              ),
              child: Opacity(
                opacity: 0.64,
                child: Text(
                  "By Signing up you agree to our Terms\n Conditions & Privacy Policy.",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            connectWithField(context),
          ],
        ),
      ),
    );
  }
}
