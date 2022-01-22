import 'constants/imports.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardingProvider()),
        ChangeNotifierProvider(create: (_) => InputProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodly App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SF Pro Text",
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: kBgColor,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: kMainTextColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: kMainTextColor,
            size: 7.0,
          ),
        ),
        scaffoldBackgroundColor: kBgColor,
        textTheme: const TextTheme(
          button: TextStyle(
            color: kBgColor,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
          headline1: TextStyle(
            color: kMainTextColor,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: kMainTextColor,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            color: kMainTextColor,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: kMainTextColor,
            fontSize: 16.0,
          ),
          subtitle1: TextStyle(
            color: kBodyTextColor,
            fontSize: 16.0,
          ),
          subtitle2: TextStyle(
            color: kMainTextColor,
            fontSize: 12.0,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          labelStyle: TextStyle(
            color: kBodyTextColor,
            fontSize: 16.0,
            letterSpacing: 0.8,
          ),
        ),
      ),
      home: OnBoardingPage(),
    );
  }
}
