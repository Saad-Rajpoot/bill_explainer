# Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Isar database
-keep class io.isar.** { *; }

# Google ML Kit
-keep class com.google.mlkit.** { *; }
-keep class com.google.android.gms.** { *; }

# Image Cropper (uCrop)
-keep class com.yalantis.ucrop.** { *; }

# General optimizations
-dontwarn io.flutter.embedding.android.FlutterActivity
-dontwarn io.flutter.embedding.android.FlutterFragment
-dontwarn io.flutter.embedding.engine.plugins.FlutterPlugin
-dontwarn io.flutter.plugin.common.MethodCodec
-dontwarn io.flutter.plugin.common.StandardMethodCodec
