# flutter_app_pilot

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Learning Path

## Part 1

- Widgets
  - Container
    - EdgeInsets
  - Text
    - TextStyle
  - Image & Image.asset
  - BoxDecoration
  - BoxConstraints
  - ListView
  - GestureDetector
  - TODO: More Widgets
- Flutter hooks
  - TODO: Not done
- Riverpod Basics

  - All Providers
  - Scoped Providers - Overrides
  - Provider
  - StateNotifier

- Vscode setup
  - https://gist.github.com/PavanGangireddy/dc3f016d82d9f2e0371da66eab3ef60e

### Apps Built

- Simple Counter
- TodosList
- Recipe Search
- Stopwatch timer

### Resources:

- CrashCourse Video
  - First two videos Boring show
- Riverpod
  - https://medium.com/flutter-community/flutter-riverpod-tutorial-timer-app-186d04637775
  - https://suragch.medium.com/flutter-state-management-for-minimalists-4c71a2f2f0c1
  - https://www.youtube.com/watch?v=GdjFOVVG2Zs
  - https://resocoder.com/2020/11/27/flutter-riverpod-tutorial-the-better-provider/#t-1606296009781
  - Video series resource - https://www.youtube.com/watch?v=Eg3ZIT-_rcc

## Part 2

- Simple Debugging in vscode
  - Logging view
  - Breakpoints
- Networking & Serialisation

  - API Call using dio and ui integration flow

    - networkcallwithapisauce - dio
    - All interceptors - Retry mechanism - https://resocoder.com/2020/03/23/dio-connectivity-retry-interceptor-flutter-tutorial/
    - Services setup - RecipeService

      - JSON, serialisation - equatable and freezed

    - provide custom headers using dio client
    - fixtures setup

- More riverpod

  - Controllers
  - Freezed UI models
    - https://developer.school/tutorials/how-to-use-freezed-with-flutter
    - https://www.youtube.com/watch?v=ApvMmTrBaFI
  - Extensions
  - Differnce between FutureProvider and stateprovider, stateprovidernotifier

- Restoration in flutter and clean architecture combination

  - Tabs UI Challenge
    - https://medium.com/flutter/getting-to-the-bottom-of-navigation-in-flutter-b3e440b9386
  - onboarding flow

- Production level clean architecture

  - Entities - equatable and freezed
  - DTO - freezed - with and implements
  - models
  - repositories
  - Handle Exceptions for any api call
  - controller or notifier - decide a name

- UI Challenges

  - Forms and Form validations

- Navigation - More Routing

  - Protected route
    - Student/Admin Logins
    - Anonymous Login

- More Networking & Navigation

  - Redirect to login on logout
  - canceltoken support
  - concurrency support

### Apps Built

- Add to Cart Feature
- restoration
  - Onboarding in a banking app
  - Persisting a tab
  - IndexedRoute
- NxtWatch like app with AuthService and Forms
- Quiz App - https://www.youtube.com/watch?v=H2uEIRNM7TE
- MoviesAPI with pagination
- TimerStream with score updation per question with firebase

### Resources:

- Clean architecture course

  - https://dev.to/marcossevilla/cleaner-flutter-vol-3-dominating-entities-bk4
  - https://devmuaz.medium.com/flutter-clean-architecture-series-part-1-d2d4c2e75c47
  - https://medium.com/@mxiskw/flutter-pragmatic-architecture-using-riverpod-123ae11a8267
  - https://medium.com/flutter-community/understanding-provider-in-diagrams-part-3-architecture-a145e4fbbde1
  - 1. https://medium.flutterdevs.com/explore-clean-architecture-in-flutter-3fff83e0f1f2
  - Package by feature
    - https://suragch.medium.com/flutter-state-management-for-minimalists-4c71a2f2f0c1
    - https://phauer.com/2020/package-by-feature/

## Part 3:

- Flutter flavours
  - Debugging environments
- ErrorHandling - exceptions ?
- Boilerplate prepare
  - From here - https://github.com/VeryGoodOpenSource/very_good_cli
- Custom hooks
- Animations
- FolderStructure
  - core contains what?
- Platform specific code
  - Ios vs android vs web
- Responsiveness
- Vscode Snippets - install

- More UI Actions (UI <- Provider) - https://infinum.com/handbook/flutter/architecture/communication-between-ui-and-provider

  - The view state should describe how the view tree should be built. Sometimes provider needs to communicate other things that don't fall under view tree of that widget. Most often these are:

    - Navigation (open some screen, close current screen)
    - Dialogs (show dialog, bottom sheet, hide dialog)
    - Snackbars, Toasts, etc.

- Testing
  - Widget tests
  - integration tests
  - debugging tests
- Retry interceptor
- Streams
  - File Uploader
- Other TODOS written inside app
- Other TODOs left in the flow
- More UI challenges
  - https://github.com/marcossevilla/ui-challenges
  - Forms
    - https://www.youtube.com/watch?v=nKv7Rz21vHo

### Apps Built

- integrate with Firebase
  - https://www.youtube.com/watch?v=vrPk6LB9bjo
- Chat app

# Tweets

1. Flutter = Typescript + Better
2. DX: Unnecessary semicolon things near import statements
3. Similar to JSX it would be better to have something called DartX while reducing verbosity
4. Error messages need experience to understand
5. javascript like merging is not there
6. Will miss chrome console
7. Felt so easy to add swipe functionality - widgets are awesome
8. Current tech stack for developing apps

- Flutter
- Riverpod
- Chatter

9. Irony: trying to create an error manually to test networkexceptions code
10. Course making resources:

- https://www.youtube.com/watch?v=77LDBo8IE2c

## General resources

- https://medium.com/flutter-community/15-useful-libraries-for-flutter-development-productivity-updated-2021-15bcafe205f3

Dayplan:

- 5,6,7 sessions review
- Flutter clean architecture episode
  - Use cases
    - https://proandroiddev.com/why-you-need-use-cases-interactors-142e8a6fe576
    - https://proandroiddev.com/the-neverending-use-case-story-d30440e5c7f0
    - https://medium.com/swlh/functional-use-cases-f896f92e768f
  - Repository
    - https://proandroiddev.com/the-real-repository-pattern-in-android-efba8662b754
