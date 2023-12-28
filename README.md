# Bookly Application
Bookly Application is a mobile application developed using Flutter. It supports both Android and IOS.

Bookly Application is a Free Books application. It allows the user to find free books ,  and reed it on website .
it  used  MVVM Architecture , Repository design pattern

## Table of contents
- ### [main packages used =>](#main-packages-used)
- ### [Folder structure =>](#folder-structure)
- ### [Demo video =>](#demo-video)

## Main packages used
- bloc: (State management)
- cached_network_image: (Caching images from the network)
- cupertino_icons: (iOS-style icons)
- dartz: (Functional programming utilities)
- dio: (Making HTTP requests)
- equatable: (Easier value comparison)
- flutter_bloc: (Bloc state management library)
- font_awesome_flutter: (Font Awesome icons)
- get_it: (Dependency injection)
- go_router: (Navigation and routing)
- google_fonts: (Access to Google Fonts)
- url_launcher: (Launching URLs)


## Folder structure
We have applied clean archeticture concept and here is the basic folder structure:

core folder structure that flutter provides:

```
bookly_app
├── android
├── assets
├── build
├── ios
├── lib
└── test
```

Here is the folder structure we have been using in this project:
```
lib
├── core
├── features
├── constants.dart
└── main.dart
```

### core
This folder contains all services and tools related to the application
```
core
├── errors
├── utils
├── widgets
```


### features
This folder containes :
1) (views->  everything related to the screen of the application).
2) (manger -> for logic or cubit ).
```
features
├── home ├── data
├        ├── presentation   ├── manger 
├                           ├── views 
├
├── search ├──presentation ├── views
├
├── splash ├──presentation ├── views

```


## Demo Video



https://github.com/MohamedHussien991999/bookly_app/assets/93053169/36ae52e0-ee9f-445c-8a25-062c0267b2a2





