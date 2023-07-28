<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

description : it provide already made container where you can add two color as gradient color, title, subtitle. 

## Features

in project there is customs made container where you just have to add same details.dart pub publish

# already made  Containers

custom container package lets you add a beautiful gradient container to your Flutter app.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  container_made : ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package: containers_made/containers_made.dart';
```
## Example
There are a number of properties that you can modify:

-  height
- width
- title
- subtitle
- gradient (color1 and color2)

## Getting started

start when ever you want to use custom container

## Usage

there is already example in there

```dart

class uniqueContainer extends StatelessWidget {
  const uniqueContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: ContainerMade(
            title: 'Hello World',
            subtitle: "This is new Package",
            color1: Colors.white,
            color2: Colors.black,
          ),
        ));
  }
}
```


## Next Goals

- [x] Add onTap for functions.
  Now, you can specify the onTap and specify a function.

- [x] Change font and color style for text.
  Change color by specifying `textcolor` and `subtitlecolor` properties.

- [ ] Add more containers to the package.
