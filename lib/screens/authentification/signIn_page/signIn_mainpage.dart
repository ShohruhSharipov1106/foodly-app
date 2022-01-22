import 'package:foodly_app/constants/imports.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
        title: const Text("Sign In"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _welcomeTextField(context),
            // edit this
            inputFieldCard(
              context,
              context.watch<InputProvider>().emailFieldController,
              TextInputType.emailAddress,
              "Email Address",
              "assets/icons/Phone.svg",
            ),
            inputFieldCard(
                context,
                context.watch<InputProvider>().passwordFieldController,
                TextInputType.visiblePassword,
                "Password",
                "assets/icons/eye.svg",
                isObsecure: true),
            _forgotPasswordField(context),
            // edit this
            primaryButtonCard(
              context,
              kActiveColor,
              "Sign in",
              getHeight(8.0),
              () => print("Sign in")
              
            ),
            // edit this
            connectWithField(context),
          ],
        ),
      ),
    );
  }

  Padding _welcomeTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getWidth(20.0),
        top: getHeight(24.0),
        right: getWidth(109.0),
        bottom: getHeight(27.0),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Welcome to\n",
              style: Theme.of(context).textTheme.headline2,
            ),
            TextSpan(
              text: "Enter your Phone number or Email\nfor sign in, Or ",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            // edit this
            TextSpan(
              text: "Create new account.",
              style: const TextStyle(
                color: kActiveColor,
                fontSize: 16.0,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _forgotPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: getWidth(130.0),
        left: getWidth(130.0),
        top: getHeight(13.0),
        bottom: getHeight(12.0),
      ),
      child: TextButton(
        child: Opacity(
          opacity: 0.64,
          child: Text(
            "Forgot Password?",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ForgotPasswordPage(),
          ),
        ),
      ),
    );
  }
}
