# Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Google Generative AI (Gemini)
-keep class com.google.generativeai.** { *; }

# Isar Database
-keep class io.isar.** { *; }
-keep class * extends io.isar.IsarCollection { *; }
-keep class * extends io.isar.IsarLinks { *; }

# SharedPreferences
-keep class com.google.gson.** { *; }

# Image Picker & Cropper
-keep class com.yalantis.ucrop.** { *; }
-keep class com.image_picker.** { *; }

# OkHttp
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okhttp3.**
-keep class okio.** { *; }
-dontwarn okio.**
