import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
      let testChannel = FlutterMethodChannel(name: "counter.flutter.dev/test",
                                             binaryMessenger: controller.binaryMessenger)
      testChannel.setMethodCallHandler({
          (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
          if call.method == "testImpl" {
              self.testZhaw(result: result)
//              result(FlutterMethodNotImplemented)
//              return
          }
          //https://stackoverflow.com/questions/61513233/flutter-passing-images-to-ios
          if call.method == "setOverviewImage" {
              guard let arguments = call.arguments as? [String:FlutterStandardTypedData],
                    let data:FlutterStandardTypedData = arguments["image"] else {
                        result("Couldn't find image data")
                        return
              }
              let overviewImage = UIImage(data: data.data)!
          }
          
            // This method is invoked on the UI thread.
            // Handle battery messages.
      })
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    
    private func testZhaw(result: FlutterResult) {
        let zhawImgMerger = ZhawImgMergerWrapper()
        let test = zhawImgMerger.overviewIsPrepared()
        if test {
            print("Verdadero")
            result(String("VERDADERO"))
        } else {
            print("Falso, esto funiciona")
            result(String("Falso, esto funiciona"))
        }
        
    }
}
