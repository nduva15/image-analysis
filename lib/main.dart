import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'presentation/routes.gr.dart';

late List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);
//   final _appRouter = AppRouter();

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) {
//             final bloc = getIt<AuthBloc>();
//             if (USE_EMULATOR) {
//               bloc.add(const AuthEvent.withEmulator());
//             }
//             bloc.add(const AuthEvent.onAuthChange());
//             return bloc;
//           },
//         ),
//       ],
//       child: BlocBuilder<AuthBloc, AuthState>(
//         builder: (context, state) {
//           final analytics = getIt<FirebaseAnalytics>();
//           return BlocBuilder<ThemeBloc, ThemeState>(
//             builder: (context, theme) {
//               return MaterialApp.router(
//                 debugShowCheckedModeBanner: false,
//                 routeInformationParser:
//                     _appRouter.defaultRouteParser(includePrefixMatches: true),
//                 routerDelegate: AutoRouterDelegate.declarative(
//                   _appRouter,
//                   navigatorObservers: () => [
//                     FirebaseAnalyticsObserver(
//                         analytics: analytics,
//                         nameExtractor: (route) => route.name),
//                   ],
//                   routes: (pendingContext) => [
//                     state.when(
//                       initial: () => const LoadingRoute(),
//                       authenticated: (user) {
//                         BlocProvider.of<PushNotificationBloc>(context).add(
//                             PushNotificationEvent.saveDeviceId(user: user));
//                         getIt<FirebaseAnalytics>()
//                             .setUserId(id: user.uid.getOrCrash());

//                         return const InitialRoute();
//                       },
//                       unauthenticated: () => const AuthRouter(
//                         children: [
//                           LoginRoute(),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 title: 'Varroa Counter',
//                 theme: lightTheme,
//                 darkTheme: darkTheme,
//                 themeMode: theme.mode,
//                 localizationsDelegates: const [
//                   Localize.delegate,
//                   GlobalMaterialLocalizations.delegate,
//                   GlobalWidgetsLocalizations.delegate,
//                   GlobalCupertinoLocalizations.delegate,
//                 ],
//                 supportedLocales: Localize.delegate.supportedLocales,
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = MethodChannel('counter.flutter.dev/test');
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String _testZhaw = "Nothing received";

  Future<void> _testImpl() async {
    String test;
    try {
      final result = await platform.invokeMethod('testImpl');
      test = "implementation sends back: $result ";
    } on PlatformException catch (e) {
      test = "Failed test: '${e.message}'.";
    }

    setState(() {
      _testZhaw = test;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _testImpl,
        tooltip: 'test',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
