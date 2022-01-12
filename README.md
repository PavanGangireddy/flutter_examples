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
  - TODO: Add links
- Riverpod Basics - Add link here

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

## Part 2

- Simple Debugging in vscode
  - Logging view
  - Breakpoints
- Networking & Serialisation

  - API Call using dio and ui integration flow
    - Learn dio
    - All interceptors
      - https://resocoder.com/2020/03/23/dio-connectivity-retry-interceptor-flutter-tutorial/
    - Services setup
      - JSON, serialisation - equatable and freezed
    - Provide custom headers using dio client
    - fixtures setup

- More riverpod

  - Controllers
  - Freezed UI models
    - https://developer.school/tutorials/how-to-use-freezed-with-flutter
    - https://www.youtube.com/watch?v=ApvMmTrBaFI
  - Extensions
  - Differnce between FutureProvider and stateprovider, stateprovidernotifier

- Restoration in flutter and clean architecture combination
  - onboarding flow
- Clean architecture Basics

  - Entities - equatable and freezed
  - DTO - freezed - with and implements
  - models
  - repositories
  - Handle Exceptions for any api call
  - controller or notifier - decide a name
  - Folder structure

- State management

  - https://leerob.io/blog/react-state-management#thats-all-folks
  - HERE NOW......

- More riverpod

  - ref.refresh?
  - Prepare a diagram of this sort mentioned in the article - https://medium.com/sparc-agency/flutter-using-riverpod-for-state-management-3c9ffbf55f78

- More Navigation

  - Protected route using Auto Route
    - Student/Admin Logins
    - Anonymous Login

- UI Challenges

  - Forms and Form validations
  - Persisting Scroll in screen
  - Tabs UI Challenge
    - https://medium.com/flutter/getting-to-the-bottom-of-navigation-in-flutter-b3e440b9386
  - Infinite list scroll

- More Networking & More Navigation

  - Redirect to login on logout - Where to add listeners
  - canceltoken support
  - concurrency support
  - Retry interceptor

### Apps Built

- Add to Cart Feature
- Restoration
  - Onboarding in a banking app
  - Persisting a tab
  - Using IndexedRoute for vertical navigation
- NxtWatch like app with AuthService and Forms
- MoviesAPI with pagination
- Quiz App - https://www.youtube.com/watch?v=H2uEIRNM7TE

### Resources:

- Clean architecture flow

  - https://devmuaz.medium.com/flutter-clean-architecture-series-part-1-d2d4c2e75c47
  - https://dev.to/marcossevilla/cleaner-flutter-vol-1-intro-to-clean-mo6
  - Overview - https://medium.flutterdevs.com/explore-clean-architecture-in-flutter-3fff83e0f1f2
  - https://proandroiddev.com/why-you-need-use-cases-interactors-142e8a6fe576
  - Repository example - https://medium.com/@kynnguyen/thanks-for-a-great-article-i-have-a-question-9067b994885c

- Others - May not need - if you want more perspectives go through them
  - https://medium.com/@mxiskw/flutter-pragmatic-architecture-using-riverpod-123ae11a8267
  - https://medium.com/flutter-community/understanding-provider-in-diagrams-part-3-architecture-a145e4fbbde1
  - Package by feature
    - https://suragch.medium.com/flutter-state-management-for-minimalists-4c71a2f2f0c1
    - https://phauer.com/2020/package-by-feature/

## Part 3:

- ErrorHandling - exceptions ?
- Boilerplate prepare
  - From here - https://github.com/VeryGoodOpenSource/very_good_cli
  - Flutter flavours
    - Using Debugging environments
  - Using very good cli
  - I18n setup
  - core inside FolderStructure
- Custom hooks
- Animations
- Platform specific code
  - Ios vs android vs web
- Responsiveness
- Prepare Vscode Snippets
- More UI Actions (UI <- Provider)
  - https://infinum.com/handbook/flutter/architecture/communication-between-ui-and-provider
  - The view state should describe how the view tree should be built. Sometimes provider needs to communicate other things that don't fall under view tree of that widget.
    Most often these are:
    - Navigation (open some screen, close current screen)
    - Dialogs (show dialog, bottom sheet, hide dialog)
    - Snackbars, Toasts, etc.
- Testing
  - Widget tests
  - integration tests
  - debugging tests
- Streams
  - File Uploader
  - https://quickbirdstudios.com/blog/mvvm-in-flutter/?utm_source=so
- Other TODOS written inside app
- Other TODOs left in the flow
- More UI challenges
  - https://github.com/marcossevilla/ui-challenges
  - https://github.com/abuanwar072?tab=repositories
  - Forms
    - https://www.youtube.com/watch?v=nKv7Rz21vHo
- Notifications and deeplinking

### Apps Built

- integrate with Firebase
  - https://www.youtube.com/watch?v=vrPk6LB9bjo
  - TimerStream with score updation per question with firebase
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
   - Dio
9. Irony: trying to create an error manually to test networkexceptions code
10. Course making resources:

- https://www.youtube.com/watch?v=77LDBo8IE2c

11. Developing using a compile safe dx vs with out it - anymetaphor

## General resources

- https://medium.com/flutter-community/15-useful-libraries-for-flutter-development-productivity-updated-2021-15bcafe205f3
- `flutter packages pub run build_runner watch`
