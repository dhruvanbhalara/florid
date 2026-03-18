# Changelogs

## 1.3.0+16
Never thought I would be consistent with something in my life. I am so happy that this app has been downloaded by many people now (approx 15k+ downloads from IzzyOnDroid).Some of you might know that I am just a student, that too a non-CS student.I am not sure how long I will be able to maintain this app but I will try to keep it up to date with new features and improvements as long as I can. Developing this app comes at a cost for me in terms of time and effort. I would be appreciated if you could support the development of the app by donating. You can find the donate button in the settings screen. If you want to contribute to the development of the app, you can check out the GitHub repository and submit a pull request. I am open to any kind of contributions, whether it's code, design, translations, or even just reporting bugs and suggesting features. Thank you for the support and love ❤️.

Help us translate Florid to more languages! Check out the translation project on [Crowdin](https://crowdin.com/project/florid). Join our Matrix room for more updates and discussions: [https://matrix.to/#/#florid:matrix.org](https://matrix.to/#/#florid:matrix.org). 

### New Features

- Apps with video trailers will now show a widget to play the trailer on the app detail screen. This will help users get a better idea of the app before downloading it.
- Analytics! I have added analytics to the app to help me understand how users are using the app. This will help me make better decisions about future updates and improvements. The analytics data is anonymous and does not contain any personally identifiable information. You can opt-out of analytics in the settings screen.
- Added support for Turkish(tr) Language
- Added support for Italian(it) Language

### Improvements
- Fixed false update notifications for some users. This was caused by a bug in the update checking logic. I have fixed it and now you should only receive update notifications when there is actually an update available.
- Redesigned app detail screen for better usability.
- Added tabs for multi-repo versions in App detail screen. This will make it easier to navigate through different versions of an app from different repositories.
- Unfocus search and hide keyboard on app tap
- Added Lazy-load repo apps and DB-only lookups for better performance and reduced memory usage.
- Enhanced onboarding flow: setup types & repos. The onboarding flow has been improved to make it easier for new users to set up the app and get started. You can now choose your setup type (basic or advanced) and select the repositories you want to enable during the onboarding process.
- Allow users to add custom repositories while onboarding.


## v1.2.1+15

### Improvements

- Fixed installation status not updating for all users. This was caused by a bug in the installation status tracking logic. I have fixed it and now the installation status should update correctly for all users.
- Fixed some UI bugs.

## v1.2.0+14

This update might not seem big but it has a lot of under the hood improvements and optimizations. Also happy that we have crossed 📈 11k+ downloads on IzzyOnDroid! I don't even know how many users have downloaded from Github! Thank you everyone for the support and love ❤️.

### New Features

- Apps now show their featured banner image on the app detail screen.
- Added an option to hide monthly top apps carousel from the home screen. You can find this option in the appearance settings.

### Improvements

- Improved user experience based on feedback and bug reports.
- Cleaner App detail screen with better organization of information.
- Some serious performance improvements and bug fixes.

## v1.1.3+13

### New Features

- You can now see authors of an app on the app detail screen. This will help you know who is behind the app and maybe find more apps from the same author.
- Games & Top Apps. You can now view games and all time top apps. Top apps feature only works if you have enabled IzzyOnDroid repository. You can find this section on the home screen.
- You can now set biometric authentication for app installation. This will add an extra layer of security to your app installations and prevent unauthorized installations. You can enable it from the settings screen.

### Improvements

- Added support for Chinese(zh) Language
- Theme impovements and bug fixes.
- Search performance improvements and bug fixes.
- Performance improvements and bug fixes.

## v1.1.2+12

Hotfix update

### Improvements

- Replaced QR code scanning library with a more reliable one. This should improve the QR code scanning experience and reduce the chances of scanning failures.
- Performance improvements and bug fixes.

## v1.1.1+11

### Improvements

- Improved top apps carousel indicators. They are now more visible and have a better animation.
- Shizuku support is now more stable and works better. I have fixed some bugs and edge cases that were causing issues for some users.
- Performance improvements and bug fixes.

## v1.1.0+10

Florid is maturing and I am glad that you are enjoying the app. I have been working hard to bring new features and improvements to the app. I hope you like them! Thank you for the support and love ❤️. Oh yes, I am skipping v1.0.9 because this is major update with a lot of new features and improvements. I am sure there are still some bugs and edge cases that I haven't tested but I will try to fix them as soon as possible. If you encounter any issues, please report them to me.

### New Features

- You can now view tops apps from IzzyOnDroid. This feature only works if you have enabled IzzyOnDroid repository. You can see tops apps from the last 30 days.
- Search filters! You can now filter search results by repository, and category. This will help you find the app you are looking for more easily.
- You can now add a repository by scanning its QR code. This will save you the trouble of typing the repository URL manually. You can find this option in the "Add Repository" screen.
- Added In-App florid updater. You can now check for updates and update the app from within the app itself. You can find this option in the settings screen.

### Improvements

- Hide dynamic color option for unsupported devices.
- Fix language issues
- UI Improvements
- Fix repetitive notifications for updates and repositories.
- Performance improvements and bug fixes.

## v1.0.8+9

Well, I need some rest after this update. The application is reaching a point where it's usable for most people. I am sure there are still some bugs and edge cases that I haven't tested but I will try to fix them as soon as possible. Thank you for the support and love ❤️.

### New Features

- [WARNING] (Use with caution) Shizuku support is here! You can now use Shizuku to grant permissions to apps that require it. You can enable it from the app detail screen if the app requires Shizuku permissions. Please note that you need to have Shizuku installed and set up on your device for this to work. This feature is still in alpha and may not work perfectly. If you encounter any issues, please report them to me.
- Support Material You dynamic color theming. If you have a supported device and Android 12 or above, you can now enable dynamic colors in the appearance settings.
- There is now a new "User" tab. You can view your favourite apps, manage your repositories, and view your app statistics from this tab. You can also export and import your favourite apps list from this tab.
- Select APKs by device ABI compatibility. You can now filter the available APKs for an app based on your device's ABI (Application Binary Interface) compatibility. This will help you find the right APK for your device and avoid downloading incompatible versions.
- Display Anti-feature on app detail screen.

### Improvements

- Much better search experience [#44](https://github.com/Nandanrmenon/florid/issues/44)
- Better Navigation bar for floird theme.
- Organise Settings page for better visibility
- Support for Large devices and foldables
- Show what's new for Florid
- UI Improvements
- Bug Fixes

## v1.0.7+8

Thank you for the 100 ⭐️ on GitHub! It means a lot to me ❤️. Your comments have been amazing and I am glad that you are enjoying the app.

### New Features

- [MAJOR] Background fetching of repository and updates is now available. You can enable it from the update settings screen. It will check for updates in the background and show a notification if any updates are available. It will also fetch repos in the background to keep the app up to date. Don't forget to allow the app to run in the background and ignore battery optimizations for it to work reliably.
- You can now favourite an app by tapping the heart icon on the app detail screen. You can view all your favourite apps in the new "Favourites" tab on the update screen.
- Export and import your favourite apps list as a JSON file. You can find this option in the settings screen.
- Group and display permission's description instead of raw permission name.
- Added support for Czech(cz) Langauge

### Improvements

- Florid theme is getting better!? I hope so
- Organise Settings page for better visibility
- New Navigation Bar for Florid Theme
- Display Android instead of SDK version for better understanding.
- Add Donate button in the app to support the development of the app (if you want to support, thank you so much ❤️).
- Bug Fixes

## v1.0.6+7

OMG! We have crossed over 1000+ downloads on IzzyOnDroid! Thank you everyone for the support and love ❤️.

### New Features

- You can download the same from any repository (that you have enabled). It maybe buggy but it works.
- Guess what? You can now enable download beta/alpha/dev verion of an app (if any)
- Added support for German(de) Langauge

### Improvements

- Florid theme is getting better!? I hope so
- Avoid duplicate repo entries
- Improvements to onboarding screen
- No more annoying keyboard popping up when app opens.
- More Animations!
- Performance Bug Fixes

## v1.0.5+6

### New Features

- New landing page with new apps and recently updated.
- Add per-version download/install button to all versions list.
- New user will can nnow give permissions screen on onboarding screen.
- New Theme!!! Don't worry it's not turned on by default. You can turn it on by going to Setting -> Appearance -> Florid Theme.
- You can now see statistics for apps from IzzyOnDroid (Thanks to IzzyOnDroid Team!).
- Preview changelogs for updates.
- New Google Sans Flex font in the app. You can to switch to Florid Theme to see it affect.

### Improvements

- Better screenshot loading.
- Redesigned app detail screen for better usability.
- More Animations!
- Bug Fixes
