import 'package:foodly_app/constants/imports.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            onBoardCard(
              context,
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? getWidth(0.62)
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? getWidth(38.0)
                      : getWidth(33.46)),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? getWidth(1)
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? getWidth(38.0)
                      : getWidth(34.0)),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? getHeight(41.0)
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? getHeight(87.94)
                      : getHeight(32.4)),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? getHeight(32.4)
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? getHeight(70.6)
                      : getHeight(69.8)),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? "assets/images/image-onboard/Illustrations-1.svg"
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? "assets/images/image-onboard/Illustrations-2.svg"
                      : "assets/images/image-onboard/Illustrations-3.svg"),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? getHeight(383.6)
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? getHeight(299.0)
                      : getHeight(362.44)),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? getWidth(376.62)
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? getWidth(299.0)
                      : getWidth(307.54)),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? getWidth(70.0)
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? getWidth(44.0)
                      : getWidth(44.0)),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? "All your favorite"
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? "Free delivery offers"
                      : "Choose your food"),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? getWidth(49.0)
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? getWidth(32.0)
                      : getWidth(32.0)),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? getWidth(49.0)
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? getWidth(31.0)
                      : getWidth(31.0)),
              getHeight(20.0),
              getHeight(40.0),
              context.watch<OnBoardingProvider>().kActiveIndex == 1
                  ? "Order from the best local restaurants with easy, on-demand delivery."
                  : (context.watch<OnBoardingProvider>().kActiveIndex == 2
                      ? "Free delivery for new customers via Apple Pay and others payment methods."
                      : "Easily find your type of food craving and you'll get delivery in wide range."),
            ),
            primaryButtonCard(
              context,
              kActiveColor,
              "Get Started",
              getHeight(60.0),
           () =>   Provider.of<OnBoardingProvider>(context, listen: false)
                          .kActiveIndex <
                      3
                  ? context.read<OnBoardingProvider>().incrementIndex()
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
