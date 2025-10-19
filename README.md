# Flutter Windows Runner

A native C++ host that embeds a Flutter application as a Windows desktop app.

---

## Project Overview

This project provides the Windows embedding for your Flutter application, utilizing a native C++ window host. It supports seamless integration with Flutter plugins, window configuration, and Windows-specific features including DPI scaling and theming.

---

## Features

- Embed Flutter apps natively on Windows platforms.
- Customizable native window with DPI awareness and dark mode support.
- Integrates and registers Flutter plugins dynamically.
- Easily extendable via C++ for advanced native integrations.

---

## Project Structure

| File                  | Description                                                        |
|-----------------------|--------------------------------------------------------------------|
| `main.cpp`            | Application entry point and window management.                     |
| `flutter_window.cpp/h`| Hosts the Flutter view and registers plugins.                      |
| `win32_window.cpp/h`  | Implements DPI-aware and themeable Win32 windowing.                |
| `utils.cpp/h`         | Utilities for argument parsing and console setup.                  |
| `resource.h`          | Resource identifiers, such as icons.                               |
| `Runner.rc`           | Resource script for including the application icon.                |
| `app_icon.jpg`        | Windows app icon asset.                                            |

---

## Prerequisites

- Flutter SDK (Windows desktop support enabled)
- Visual Studio with C++ development tools

---

## Getting Started

1. **Clone the repository:**
git clone <repository-url>

2. **Open the project in Visual Studio or a compatible IDE.**
3. **Ensure Flutter SDK and necessary dependencies are installed.**
4. **Build the solution** using your IDE or command line.

---

## Running the Application

To launch the app, use Visual Studio's run/debug options, or run via `flutter run` from your terminal (make sure desktop support is enabled).

---

## Customization

To customize the window (size, title, integrations), modify `main.cpp` and relevant classes in `win32_window.cpp/h`. For plugin support or new integrations, extend `flutter_window.cpp/h` as required.

---

## License

This project is distributed under the license of the main Flutter project, or as specified by your organization.

---

For further reference, see the [Flutter Windows documentation](https://docs.flutter.dev/desktop#supported-platforms).


