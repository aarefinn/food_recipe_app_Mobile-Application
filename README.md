Flutter Windows Runner
![App Icon]​

Overview
This project is a custom Flutter Windows runner written in C++. It provides a native host window to embed your Flutter app, manages plugin registration, window configuration, and native-Windows integration features.

Features
Hosts a Flutter app on Windows

Handles window creation, DPI awareness, and dark mode support

Integrates with Flutter plugins

Customizable window logic via C++ code

Project Structure
File	Purpose
main.cpp	Entry point for the Windows runner
flutter_window.cpp/h	Host for the Flutter app view, manages plugin registration and window events
win32_window.cpp/h	Abstraction for DPI-aware Win32 windows, message handling, and theme adaptation
utils.cpp/h	Utility functions for command-line parsing, console output redirection
resource.h	Windows resource identifiers (e.g., app icon)
Runner.rc	Resource file linking icons and other assets
app_icon.jpg	App icon used in the Windows application
Getting Started
Prerequisites
Flutter SDK (Windows Desktop support enabled)

Visual Studio with C++ development tools

Setup
Clone this repository.

Open the project in Visual Studio (or your C++ IDE).

Ensure Flutter is installed and your environment is set up for Windows desktop development.

If this is part of a larger Flutter app, place your Flutter build in the expected location for the runner.

Build and Run
Build the solution in Visual Studio.

Run the resulting executable, or launch via Flutter tooling (flutter run), which starts the Windows runner.

How It Works
The C++ runner sets up a native window and hosts the Flutter engine.

Plugins are registered automatically via flutter_generated_plugin_registrant.h.

App logic (UI, business logic) remains inside the main Flutter (Dart) project; the C++ code handles only the host aspects.

Customization
To change window properties (size, title, etc.), edit main.cpp and win32_window.cpp.

Add or modify native functionality in the respective header/source files as needed.

License
This project typically inherits licensing from the main Flutter project. Add custom license info here if required.

For further details, consult official Flutter Windows embedding docs.
