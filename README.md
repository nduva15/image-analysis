# Varroa Counter

A Flutter mobile application for automated detection and counting of Varroa mites in beehives using computer vision and machine learning.

## Overview

The Varroa Counter app is designed to help beekeepers monitor Varroa mite infestations in their bee colonies. It uses advanced computer vision algorithms to automatically detect and count mites on bee brood frames, providing an efficient alternative to manual counting methods.

## Key Features

- **Camera Integration**: High-resolution camera support for capturing detailed images of bee frames
- **Computer Vision Detection**: Automated detection of Varroa mites using elliptical fitting algorithms
- **Multi-platform Support**: Native iOS and Android support with optimized performance
- **Firebase Integration**: Cloud storage, authentication, and analytics
- **Multi-language Support**: Internationalization support (English, German, French, Italian)
- **Real-time Processing**: Live camera preview with immediate feedback
- **Data Export**: Save and export detection results for further analysis

## Technical Architecture

### Frontend (Flutter)

- **Framework**: Flutter with Dart
- **Architecture**: Clean Architecture with BLoC pattern
- **State Management**: Flutter BLoC for reactive state management
- **Routing**: Auto Route for declarative navigation
- **UI Components**: Custom Waggle UI components
- **Camera**: Native camera integration with high-resolution capture

### Backend & Services

- **Authentication**: Firebase Auth with multiple providers (Google, Apple, Facebook)
- **Database**: Cloud Firestore for data storage
- **Storage**: Firebase Storage for image management
- **Analytics**: Firebase Analytics and Crashlytics
- **Push Notifications**: Firebase Cloud Messaging
- **Remote Configuration**: Firebase Remote Config for dynamic settings

### Computer Vision Engine (Native C++)

The core detection algorithm is implemented in native C++ for optimal performance:

#### Key Components:

- **Image Processing**: OpenCV for image manipulation and processing
- **Elliptical Detection**: Custom elliptical fitting algorithms for mite detection
- **Coin Detection**: Automated detection of reference coins for scale calibration
- **Multi-threading**: Parallel processing for improved performance
- **Machine Learning**: LightGBM integration for mite classification

#### Detection Pipeline:

1. **Overview Image Capture**: High-resolution image of the entire bee frame
2. **Coin Detection**: Automatic detection of reference coins for scale calibration
3. **Resolution Setting**: Calculate pixel-to-millimeter ratio based on coin size
4. **Feature Extraction**: Compute ORB features for image registration
5. **Detail Image Processing**: Capture and align detailed images of specific areas
6. **Mite Detection**: Apply elliptical fitting to detect potential mites
7. **Classification**: Use machine learning to classify detected objects
8. **Results**: Provide count and visualization of detected mites

### Native Implementations

#### iOS

- **Objective-C++ Bridge**: Seamless integration between Flutter and native C++
- **Core Image Processing**: iOS-optimized image processing pipeline
- **Metal Performance**: GPU acceleration for computer vision tasks

#### Android

- **JNI Integration**: Java Native Interface for C++ integration
- **NDK Build**: Native Development Kit for optimized performance
- **OpenCV Android**: Mobile-optimized OpenCV implementation

## Project Structure

```
lib/
├── application/          # Application layer (BLoCs, use cases)
│   ├── common/          # Shared application logic
│   ├── l10n/           # Localization
│   └── push_notification/ # Push notification handling
├── domain/              # Domain layer (entities, repositories)
│   ├── entities/        # Domain entities
│   └── repositories/    # Repository interfaces
├── infrastructure/      # Infrastructure layer (data sources)
│   └── data/           # Data sources and repositories
├── presentation/        # Presentation layer (UI, pages)
│   ├── auth/           # Authentication screens
│   ├── common/         # Shared UI components
│   └── routes.dart     # Navigation routes
└── config/             # Configuration files

native/
├── ios/Runner/C++Classes/    # iOS native implementation
└── android/app/src/main/cpp/ # Android native implementation
    └── Vatorex/              # Core computer vision library
```

## Dependencies

### Flutter Dependencies

- **flutter_bloc**: State management
- **auto_route**: Navigation
- **camera**: Camera functionality
- **firebase_core**: Firebase integration
- **firebase_auth**: Authentication
- **cloud_firestore**: Database
- **firebase_storage**: File storage
- **google_sign_in**: Google authentication
- **sign_in_with_apple**: Apple authentication
- **flutter_facebook_auth**: Facebook authentication

### Native Dependencies

- **OpenCV**: Computer vision library
- **LightGBM**: Machine learning framework
- **Custom Elliptical Detector**: Specialized mite detection algorithms

## Getting Started

### Prerequisites

- Flutter SDK (>=2.17.1)
- Android Studio / Xcode
- Firebase project setup
- OpenCV for mobile development

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-username/varroa_counter.git
   cd varroa_counter
   ```

2. **Install Flutter dependencies**

   ```bash
   flutter pub get
   ```

3. **Setup Firebase**

   - Create a Firebase project
   - Add `google-services.json` for Android
   - Add `GoogleService-Info.plist` for iOS
   - Enable Authentication, Firestore, and Storage

4. **Configure native dependencies**

   - Ensure OpenCV is properly linked
   - Build native libraries for your target platform

5. **Run the application**
   ```bash
   flutter run
   ```

### Building for Production

#### Android

```bash
flutter build apk --release
# or for app bundle
flutter build appbundle --release
```

#### iOS

```bash
flutter build ios --release
```

## Usage

1. **Authentication**: Sign in using Google, Apple, or Facebook
2. **Camera Setup**: Grant camera permissions
3. **Frame Capture**: Position the bee frame in the camera view
4. **Coin Calibration**: Ensure a reference coin is visible for scale
5. **Detection**: The app will automatically detect and count mites
6. **Results**: View detection results and export data

## Development

### Architecture Patterns

- **Clean Architecture**: Separation of concerns across layers
- **BLoC Pattern**: Reactive state management
- **Repository Pattern**: Data access abstraction
- **Dependency Injection**: Injectable service management

### Code Generation

The project uses several code generation tools:

```bash
# Generate routes
flutter packages pub run build_runner build

# Generate freezed classes
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Testing

```bash
# Run unit tests
flutter test

# Run widget tests
flutter test test/widget_test.dart
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- **ZHAW (Zurich University of Applied Sciences)**: Core computer vision algorithms



