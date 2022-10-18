# rover

Main VOxOV Frontend

## Generate gRPC code

Clone VOxOV right next to this repo.

    protoc --dart_out=grpc:lib/src/generated -I ../voxov/api -Iprotos ../voxov/api/voxov.proto

## Generate Isar code

    flutter pub run build_runner build

## Install dependencies

    sudo apt install libsecret-1-dev libjsoncpp-dev libsecret-1-0

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
