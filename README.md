# README

## rifcare_responsive Library

### Overview
The `rifcare_responsive` package is a Flutter library designed to simplify responsive design by providing a widget and utility methods to handle layout changes across different screen sizes.

### Installation
Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  rifcare_responsive: latest_version
```

Then, run the following command to fetch the package:

```sh
flutter pub get
```

### Usage
To use the `RifcareResponsive` widget, import the package into your Dart file:

```dart
import 'package:rifcare_responsive/rifcare_responsive.dart';
```

#### Example
```dart
import 'package:flutter/material.dart';
import 'package:rifcare_responsive/rifcare_responsive.dart';

class ResponsiveExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RifcareResponsive(
      builder: (context, constraints) {
        if (RifcareResponsive.isMobile(constraints)) {
          return MobileLayout();
        } else if (RifcareResponsive.isTablet(constraints)) {
          return TabletLayout();
        } else {
          return DesktopLayout();
        }
      },
    );
  }
}
```

### API Reference
#### `RifcareResponsive`
- **`builder`**: A required callback function that takes `BuildContext` and `BoxConstraints` as parameters and returns a `Widget`.
- **`isMobile(BoxConstraints constraints)`**: Returns `true` if the device is classified as a mobile device (width < 600).
- **`isTablet(BoxConstraints constraints)`**: Returns `true` if the device is classified as a tablet (600 ≤ width < 1200).
- **`isDesktop(BoxConstraints constraints)`**: Returns `true` if the device is classified as a desktop device (width ≥ 1200).

### Features
- Simplifies responsive UI development by detecting device types.
- Flexible layout building with a `builder` callback.
- Lightweight and easy to integrate.

### Contributing
Contributions are welcome! Please feel free to submit a pull request or file an issue for bugs or feature requests.

### License
This project is licensed under the MIT License. See the LICENSE file for more details.

### Contact
For any queries or support, reach out to:
- **Email:** support@rifcare.in
- **Company:** [RIFCARE TECH PVT LIMITED](#)

---
Thank you for using `rifcare_responsive`. We look forward to your feedback and suggestions!
