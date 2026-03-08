# Tamanina (طمأنينة) iOS App

This is a native iOS rebuild of the Tamanina web application using SwiftUI.

## Setup Instructions (IMPORTANT)

Since this project was migrated from a UIKit template to SwiftUI, follow these steps to run it in Xcode:

1. **Open the Project**: Open `tm.xcodeproj` in Xcode.
2. **Add Files**:
   - In Xcode's project navigator, right-click on the yellow `tm` folder.
   - Select **"Add Files to 'tm'..."**.
   - Select the `Core`, `Views` folders, `TamaninaApp.swift`, and `ContentView.swift`.
   - Ensure "Copy items if needed" is unchecked (since files are already there).
   - Ensure "Create groups" is selected.
   - Click **Add**.

3. **Remove Old Files (If present in Project Navigator)**:
   - If you see `AppDelegate.swift`, `SceneDelegate.swift`, `ViewController.swift` in red or normal, select them and press Delete -> "Remove Reference".
   - (These files have been renamed to `.bak` on disk to avoid conflicts).

4. **Verify Info.plist**:
   - The `Info.plist` has been automatically updated to remove the Storyboard reference.
   - Ensure `Privacy - Location When In Use Usage Description` is present (it should be).

5. **Run**: Select your simulator and run (Cmd+R).

## Architecture
- **MVVM**: The app uses Model-View-ViewModel pattern.
- **Core**: Contains Shared Services (`PrayerTimeService`, `LocationManager`), Extensions, and Theme logic.
- **Views**: Organized by Tab (Home, Quran, Azkar, Progress, More).

## Key Features
- **Prayer Times**: Calculated locally based on device location (simulated logic for demo).
- **Qibla Compass**: Uses `CoreLocation` heading.
- **Interactive Azkar**: Digital Tasbeeh with Haptic feedback.
- **Stats**: Visual progress tracking.
