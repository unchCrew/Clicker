# Clicker Game

A simple clicker game built with HaxeFlixel, featuring a stylish GUI and Android support.

## Prerequisites
- Haxe 4.3.4
- HaxeFlixel (`haxelib install flixel`)
- Lime (`haxelib install lime`)
- OpenFL (`haxelib install openfl`)
- Android SDK (for Android builds)

## Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/clicker-game.git
   cd clicker-game
   ```
2. Install dependencies:
   ```bash
   haxelib install flixel
   haxelib install lime
   haxelib install openfl
   ```
3. For Android, set up the Android SDK:
   ```bash
   haxelib run lime setup android
   ```

## Building
- **HTML5**:
  ```bash
  haxe -main Main -cp source -lib flixel -js bin/html5/ClickerGame.js
  ```
- **Android**:
  ```bash
  haxe -main Main -cp source -lib flixel -android -D android -D lime_native bin/android/ClickerGame.apk
  ```

## GitHub Workflow
The `.github/workflows/build.yml` file automates building for HTML5 and Android on push to the `main` branch. Artifacts are uploaded to GitHub Actions.


## Notes
- Replace `assets/icon.png` with a 512x512 PNG for Android.
- Customize the GUI by modifying colors and fonts in `MenuState.hx` and `PlayState.hx`.
