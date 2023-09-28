# challenge_camera :blue_heart: 

This is a challenge app built with [Flutter](https://flutter.dev/). It's a simple app that connects to Firebase. It only has two screens, the Home screen, which is the main screen, and the screen to upload a photo to the server.


## How to install this project
After cloning the project, run the following commands in your terminal:

```
cd <path_to_this_project>
flutter pub get
flutter run
```

# How to use it
Once you enter the application the home screen will be displayed, if there are no images a text will be displayed that says "No images found". 

In the app bar you will find a button with a plus icon to add an image, by pressing this button you will navigate to a form where the only required field is the image, you can add or not a title, a description and a place. After taking an image, you will see the "Upload" button. You have to tap on the upload button to upload the image and details. Once saved, you will be returned to the home screen where the list of images should be updated.

# Technical aspects
This is the stack of this project:

Aspect | Solution
------------ | -------------
Architecture | The hexagonal architecture
State management | [Riverpod](https://riverpod.dev/docs/getting_started)
Backend | [Firebase](https://firebase.google.com/)




### Packages
Some of the most relevant packages used in this project are:

Package | What it solves
------------ | -------------
[flutter_riverpod](https://pub.dev/packages/flutter_riverpod) | A state-management library that can be considered an improve of another package that is largely used and well accepted by the community
[freezed](https://pub.dev/packages/freezed) | A code generator for unions/pattern-matching/copy. It helps to reduce boilerplate
[camerawesome](https://pub.dev/packages/camerawesome) | This packages provides you a fully customizable camera experience that you can integrate within your app
[cloud_firestore](https://pub.dev/packages/cloud_firestore) |  A Flutter package that facilitates communication with Firebase Firestore Database
[firebase_storage](https://pub.dev/packages/firebase_storage) | A Flutter package that enables interaction with Firebase Cloud Storage for managing files and binary data in Firebase projects 
[cached_network_image](https://pub.dev/packages/cached_network_image) | A flutter library to show images from the internet and keep them in the cache directory.



### Technical debts
This was a "weekend project" so there are some features I haven't been able to add and I consider them technical debt. Below I name some of them.

 ...  | Name | Detail
------ | ------ | ------ 
:x: | Authentication | My goal was to show how to use flutter_riverpod + camerawesome interacting with firebase. In a few days the Firebase project will be removed
:x: | CRUD | With Firebase, implementing data deletion and updating is very similar to implementing read and create. The goal was to show how to interact with those packages and that is already fulfilled with the read and write implementations.
:x: | Widget testing | I only did the unit tests, I didn't have time to test the widgets

# Testing

### Unit Testing

100% of unit tests have been covered

<img width="1766" alt="Screenshot 2023-09-27 at 22 39 24" src="https://raw.githubusercontent.com/jorgesarabia/challenge_camera/master/assets/coverage.png">


### Screenshots


<img width="200" alt= "flutter_01" src="https://raw.githubusercontent.com/jorgesarabia/challenge_camera/master/assets/flutter_01.png">
<img width="200" alt= "flutter_02" src="https://raw.githubusercontent.com/jorgesarabia/challenge_camera/master/assets/flutter_02.png">
<img width="200" alt= "flutter_03" src="https://raw.githubusercontent.com/jorgesarabia/challenge_camera/master/assets/flutter_03.png">












