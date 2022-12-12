# rover

This implementation is discontinued.

Main VOxOV Frontend

## Flutter SDK

Install from GitHub master branch.

## Generate gRPC code

Clone VOxOV right next to this repo.

    protoc --dart_out=grpc:lib/src/generated -I ../voxov/api -Iprotos ../voxov/api/voxov.proto

Ignore `protos: warning: directory does not exist.`

## Generate Isar code

    flutter pub run build_runner build --delete-conflicting-outputs

## Install dependencies on Linux

    sudo apt install libsecret-1-dev libjsoncpp-dev libsecret-1-0 libgtkd-3-dev clang ninja-build cmake

## Getting Started

Don't install flutter SDK with snap on Linux. Try git.

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
