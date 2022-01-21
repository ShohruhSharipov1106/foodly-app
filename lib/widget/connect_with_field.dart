import 'package:foodly_app/constants/imports.dart';

Column connectWithField(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getWidth(167.0),
          vertical: getHeight(16.0),
        ),
        child: Opacity(
          opacity: 0.64,
          child: Text(
            "Or",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
      ),
      Stack(
        children: [
          primaryButtonCard(
            context,
            kFacebookColor,
            "Connect with Facebook",
            getHeight(8.0),
            () => print("Connect with Facebook"),
          ),
          Positioned(
            child: SizedBox(
              height: getHeight(28.0),
              width: getWidth(28.0),
              child: SvgPicture.asset("assets/icons/facebook.svg"),
            ),
            left: getWidth(36.0),
            bottom: getHeight(16.0),
          ),
        ],
      ),
      Stack(
        children: [
          primaryButtonCard(
            context,
            kGoogleColor,
            "Connect with Google",
            getHeight(8.0),
            () => print("Connect with google"),
          ),
          Positioned(
            child: SizedBox(
              height: getHeight(28.0),
              width: getWidth(28.0),
              child: SvgPicture.asset("assets/icons/google.svg"),
            ),
            left: getWidth(36.0),
            bottom: getHeight(16.0),
          ),
        ],
      ),
    ],
  );
}
