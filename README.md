# sp_adapter

A flutter package.
Screen adaptation. Make UI scale proportionally on different screen sizes.

First, determine the size of the design draft and adapt it according to the width or height.

## Usage

### Add dependency

```yaml
dependencies:
  flutter:
    sdk: flutter
  # add sp_adapter
  sp_adapter: any
```

### Add the following imports to your Dart code

```dart
import 'package:sp_adapter/sp_adapter.dart';

LayoutBuilder(builder: (context, constraints) {
  if (constraints.maxWidth != 0) {
    return MaterialApp(
      ...
      builder: (context, child) {
        /// Check the size of the design draft, such as 375
        SPAdapter.initWidth(375, MediaQuery.of(context).size.width);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling, // Do not scale fonts with the system
          ),
          child: child!,
        );
      }
    );
  }
  return Container();
});

```

### Then you can use like this

```dart
Container(
  width: 375.sp, // equal to MediaQuery.of(context).size.width
  height: 100.sp,
),
Text('20.sp', style: TextStyle(fontSize: 20.sp)),
```
