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
  - TODO:
- Riverpod Basics

  - All Providers
  - Scoped Providers - Overrides
  - Provider
  - StateNotifier

### Apps Built

- Simple Counter
- Stopwatch timer
- TodosList
- Recipe Search

### Resources:

- CrashCourse Video
  - First two videos Boring show
- Riverpod
  - https://medium.com/flutter-community/flutter-riverpod-tutorial-timer-app-186d04637775
  - https://suragch.medium.com/flutter-state-management-for-minimalists-4c71a2f2f0c1
  - https://www.youtube.com/watch?v=GdjFOVVG2Zs
  - https://resocoder.com/2020/11/27/flutter-riverpod-tutorial-the-better-provider/#t-1606296009781

## Part 2

- Simple Debugging in vscode
  - Logging view
  - Breakpoints
- Networking

  - API Call using dio and ui integration flow

    - networkcallwithapisauce - dio
    - All interceptors - Retry mechanism - https://resocoder.com/2020/03/23/dio-connectivity-retry-interceptor-flutter-tutorial/
    - Services setup - RecipeService

      - JSON, serialisation - equatable and freezed

    - provide custom headers using dio client
    - fixtures setup

- Production level clean architecture

  - Entities - equatable and freezed
  - DTO - freezed - with and implements
  - models
  - repositories

- Navigation - Routing structure

  - ProtectedRoute
  - Integration with logout route

### Apps Built

- NxtWatch like app with Auth
- Quiz App - https://www.youtube.com/watch?v=H2uEIRNM7TE
- MoviesAPI with pagination

### Resources:

- Clean architecture course

  - https://dev.to/marcossevilla/cleaner-flutter-vol-3-dominating-entities-bk4
  - https://devmuaz.medium.com/flutter-clean-architecture-series-part-1-d2d4c2e75c47
  - https://medium.com/@mxiskw/flutter-pragmatic-architecture-using-riverpod-123ae11a8267

## Part 3:

- Flutter flavours

  - Debugging environments

- ErrorHandling - exceptions ?

- Boilerplate prepare
- Custom hooks
- Animations
- FolderStructure
  - core contains what?
- Platform specific code
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
- Other TODOS written inside app
- Other TODOs left in the flow
- More UI challenges
  - https://github.com/marcossevilla/ui-challenges

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
- ...

9. Irony: trying to create an error manually to test networkexceptions code
