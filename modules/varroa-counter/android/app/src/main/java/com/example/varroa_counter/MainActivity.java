package com.example.varroa_counter;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import org.opencv.android.OpenCVLoader;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "counter.flutter.dev/test";

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        (call, result) -> {
                            System.out.println("this is a test HIELLO");
                            testOpencv();
                        }
                );
    }

    private static String TAG="MainActivity";
    static {
        System.loadLibrary("varroa_counter");
        System.loadLibrary("opencv_java4");
    }

    private void testOpencv() {

        if (OpenCVLoader.initDebug()) {
            System.out.println("OPENCV LOADED SUCCESSFULLY");
            System.out.println("\n"+validate(500,500));
            System.out.println(""+testFromImgMerger());
        } else {
            System.out.println("OPENCV DİD NOT LOAD");

        }
    }
    public native String stringFromJNI();
    public native String validate(long madAddrGr,long matAddrRgba);
    public native String testFromImgMerger();
}
