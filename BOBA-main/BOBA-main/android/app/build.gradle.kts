plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin") // Must be after Android/Kotlin plugins
}

android {
    namespace = "com.example.boba"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true  // ✅ Fixed property name
        sourceCompatibility = JavaVersion.VERSION_17 // ✅ Updated Java version
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString() // ✅ Match Java version
    }

    defaultConfig {
        applicationId = "com.example.boba"
        minSdk = 21  // ✅ Increased minSdk to 21 to fix NDK issue
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

// ✅ Ensure dependencies block is present
dependencies {
    implementation("androidx.core:core-ktx:1.12.0") // ✅ Added Core KTX for better support
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.0.3") // ✅ Correct placement
}
