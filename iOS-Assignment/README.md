### iOS - Assignment

Objective:
Build a simple app that contains Employee information. The list of Employee information will come from the API provided below.
UI Design & Use Case:
- App Icon: Add an App Icon (Use any 1024x1024px Company Logo).
- Splash Screen: When the user opens the app, the splash screen will appear for 3 seconds, showing the app icon at the center of the screen.
- Home Screen: This screen contains a list of employees with their image and name. ( use tableview to display info )
- Details Screen: When the user clicks on a particular list item from thehome screen, they will navigate to this screen. Pass the selected data from the previous screen to show details
  on this screen. The details should be displayed in the following order:
  - Show the default back button.
  - Show the image at the top of the screen, covering all edges (height: 500).
  - Show the name below the image in bold (in a ScrollView).
  - Show the other details below the name (in a ScrollView with the name).

## Requirements:
- Use a storyboard for the splash screen & home screen.
- Use manual constraints for the detail screen. ( NSLayoutConstraint)
- Must follow the MVVM architecture.

### API Link:
https://dummyapis.com/dummy/employee
