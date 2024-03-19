# dentsu_quotes

Welcome to Dentsu Quotes.

<img src ="https://github.com/KenStarry/Dentsu_Quotes/assets/82617564/56a199a7-02df-4bd9-b605-37ae334cbfcd" width=300,
alt="App Screenshot"/>

## Getting Started
Below are instructions for running this project locally.

***

### Flutter Version

This project is running on Flutter version `3.16.0` and Dart Version `3.2.0`.
Ensure you are running on the same or higher version of Flutter to run this project successfully.

#### FVM (Flutter Version Management)
If you don't want to run a fresh upgrade of your current Flutter Version, you can look at [Flutter FVM](https://fvm.app) in order to install this version of Flutter
Separately.

***

### Development Environment
The project was run and developed in **Android Studio** but you can use other IDEs such as **Intellij IDEA**, **Visual Studio Code** or any other IDE of your choice.

***

### Database Setup
The project has been setup to work with a `Supabase` backend instance. This means that you would require a `Public Anon Key` and the `URL` for the database. These shall be provided in the specified
email for the respective persons.

*** 

## Building Release APK

To build the APK in release mode, follow the following steps.

### 1. Generate Signing Keys
Run the following command at the command line:

MAC OS
```
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA \
        -keysize 2048 -validity 10000 -alias upload
```

On Windows, use the following command in PowerShell:

```
keytool -genkey -v -keystore yourPath\upload-keystore.jks ^
        -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 ^
        -alias key
```

### 2. Referencing the Keystore
Create a file named `[project]/android/key.properties` that contains a reference to your keystore. Don’t include the angle brackets (< >). They indicate that the text serves as a placeholder for your values.

```
storePassword=<password-from-previous-step>
keyPassword=<password-from-previous-step>
keyAlias=upload
storeFile=<keystore-file-location>
```

### 3. Configure Signing in Gradle
1. Add the keystore information from your properties file before the android block:

```
   def keystoreProperties = new Properties()
   def keystorePropertiesFile = rootProject.file('key.properties')
   if (keystorePropertiesFile.exists()) {
       keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
   }

   android {
         ...
   }
```
Load the key.properties file into the keystoreProperties object.

2. Find the buildTypes block:

```
   buildTypes {
       release {
           // TODO: Add your own signing config for the release build.
           // Signing with the debug keys for now,
           // so `flutter run --release` works.
           signingConfig signingConfigs.debug
       }
   }
```
And replace it with the following signing configuration info:

```
   signingConfigs {
       release {
           keyAlias keystoreProperties['keyAlias']
           keyPassword keystoreProperties['keyPassword']
           storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
           storePassword keystoreProperties['storePassword']
       }
   }
   buildTypes {
       release {
           signingConfig signingConfigs.release
       }
   }

```

Yeey! Release builds of your app will now be signed automatically.












