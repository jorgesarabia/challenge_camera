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

In the main bar you will find a button with a plus icon to add an image, by pressing this button you will navigate to a form where the only required field is the image, you can add or not a title, a description and a place. After taking an image, you will see the "Upload" button. You have to tap on the upload button to upload the image and details. Once saved, you will be returned to the home screen where the list of images should be updated.

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
This was a 'weekend project' so there are some features that I was unable to add and it has some technical debts. I name some of them below

 ...  | Name | Detail
------ | ------ | ------ 
:x: | Authentication | My goal was to show how to use flutter_riverpod + camerawesome interacting with firebase. In a few days the Firebase project will be removed
:x: | CRUD | With Firebase, implementing data deletion and updating is very similar to implementing read and create. The goal was to show how to interact with those packages and that is already fulfilled with the read and write implementations.
:x: | Widget testing | I only carried out the unit tests, I lacked time to carry out more tests on the widgets 

# Testing

### Unit Testing

I need to refactor a function to achieve 100% code coverage

![Screen Shot 2022-03-21 at 10 42 33](https://user-images.githubusercontent.com/6399992/159273610-769a476b-8d48-48e6-a3f1-ff001faf25c4.png)

### Widget Testing

After adding widget testing on some screens, this is what full coverage looks like

![Screen Shot 2022-03-21 at 10 46 12](https://user-images.githubusercontent.com/6399992/159275387-5833f0cd-67da-4e62-80a6-5e5422da1094.png)

