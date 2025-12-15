# Flutter embedding
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Keep generated plugin registrant
-keep class **.GeneratedPluginRegistrant { *; }

# Play Core classes for deferred components
-keep class com.google.android.play.core.** { *; }
-keep interface com.google.android.play.core.** { *; }

# Keep Flutter deferred components
-keep class io.flutter.embedding.engine.deferredcomponents.** { *; }
-keep class io.flutter.embedding.android.FlutterPlayStoreSplitApplication { *; }

# Keep listener interfaces
-keep interface com.google.android.play.core.tasks.** { *; }

# Prevent warnings for missing classes that are safe to ignore
-dontwarn com.google.android.play.core.**
-dontwarn com.google.android.gms.**
-dontwarn io.flutter.embedding.engine.deferredcomponents.**
