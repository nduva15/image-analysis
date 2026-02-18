import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:varroa_counter/main.dart';
import 'package:varroa_counter/presentation/overview_picture_screen.dart';
import 'package:varroa_counter/presentation/routes.gr.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Initial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is the initial page',
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(OverviewPictureRoute(camera: cameras.first));
              },
              child: Text("Initial"),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.navigate(OverviewPictureRoute(camera: cameras.first));
              },
              child: Text("Camera"),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _testImpl,
      //   tooltip: 'test',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
