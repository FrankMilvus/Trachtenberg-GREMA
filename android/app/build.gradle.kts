import java.util.Properties

val keystoreProperties = Properties()
//val keystorePropertiesFile = rootProject.file("key.properties")
val keystorePropertiesFile = file("key.properties")

if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(keystorePropertiesFile.inputStream())
}

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.milvus.grema"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
//        jvmTarget = JavaVersion.VERSION_17.toString()
        jvmTarget = JavaVersion.VERSION_17.toString()
    }
//    kotlin {
//        jvmToolchain(17)
//    }


    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.milvus.grema"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }
//    val keyAlias = keystoreProperties["keyAlias"]?.toString()
//        ?: throw GradleException("keyAlias missing in key.properties")
//    val keyPassword = keystoreProperties["keyPassword"]?.toString()
//        ?: throw GradleException("keyPassword missing in key.properties")
//    val storePassword = keystoreProperties["storePassword"]?.toString()
//        ?: throw GradleException("storePassword missing in key.properties")
//    val storeFilePath = keystoreProperties["storeFile"]?.toString()
//        ?: throw GradleException("storeFile missing in key.properties")

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties.getProperty("keyAlias")
            keyPassword = keystoreProperties.getProperty("keyPassword")
            storePassword = keystoreProperties.getProperty("storePassword")
            storeFile = file(keystoreProperties.getProperty("storeFile"))
        }
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
//            signingConfig = signingConfigs.getByName("debug")

            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true
            isShrinkResources = true

        }
    }
}

flutter {
    source = "../.."
}
