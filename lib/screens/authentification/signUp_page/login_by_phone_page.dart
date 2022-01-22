import 'package:foodly_app/constants/imports.dart';

class LoginByPhone extends StatelessWidget {
  const LoginByPhone({Key? key}) : super(key: key);

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
        title: const Text("Login to Foodly"),
      ),
      body: Column(
        children: [
          _welcomeTextField(context),
          // edit this
          inputFieldCard(
            context,
            context.watch<InputProvider>().phoneNumberFieldController,
            TextInputType.phone,
            "Phone Number",
            "assets/icons/Phone.svg",
          ),

          // edit this
          primaryButtonCard(
            context,
            kActiveColor,
            "Sign up",
            getHeight(8.0),
            () =>Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ConfirmPhone(),
                ),
              ),
          ),
          // edit this
        ],
      ),
    );
  }

  Padding _welcomeTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getWidth(38.0),
        top: getHeight(24.0),
        right: getWidth(38.0),
        bottom: getHeight(27.0),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Get started with Foodly\n",
              style: Theme.of(context).textTheme.headline2,
            ),
            TextSpan(
              text: "Enter your phone number to use foodly\n",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            // edit this
            TextSpan(
              text: "and enjoy your food :)",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
