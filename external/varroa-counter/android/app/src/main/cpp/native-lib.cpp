#include <jni.h>
#include <string>
#include "zhaw_imgmerger.h"
#include <opencv2/core.hpp>

extern "C"
JNIEXPORT jstring JNICALL
Java_com_example_varroa_1counter_MainActivity_validate(JNIEnv *env, jobject thiz, jlong mad_addr_gr,jlong mat_addr_rgba) {
    cv::Rect();
    cv::Mat();
    std::string hello2="hello from validate";
    return env->NewStringUTF(hello2.c_str());
    // TODO: implement validate()
}
extern "C"
JNIEXPORT jstring JNICALL
Java_com_example_varroa_1counter_MainActivity_stringFromJNI(JNIEnv *env, jobject thiz) {
    // TODO: implement stringFromJNI()
    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}

extern "C"
JNIEXPORT jstring JNICALL
Java_com_example_varroa_1counter_MainActivity_testFromImgMerger(JNIEnv *env, jobject thiz) {
    // TODO: implement stringFromJNI()
    ZHAW_ImgMerger merger;
    jboolean test = merger.detect_coins_on_overview();
    if (test) {
        return env->NewStringUTF("VERDADERO");
    } else {
        return env->NewStringUTF("FLASO: FELICIDADES!!");
    }
}