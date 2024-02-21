## THE PROFILE APP
The basic User Interface of Profile App created using Stacks.
- HStack
- VStack
- ZStack

## [CODE SNIPPET](ProfileApp01/ProfileApp01/ContentView.swift)
<img width="1440" alt="Snapshot" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/6f6cc015-766c-4d5b-b478-144d29a4422b">

## METHODOLOGY
- ### FILE STRUCTURE
  - **ProfileApp01App**
      - Consist **WindowGroup** to presents group of identically structured windows.
      - WindowGroup displays/calls **CounterView** method to display the content of the app.
  - **CounterView**
      - Contains ZStack and VStack.
  - **Assets**
      - Consists Background image and Memoji.
---
- ## ASSETS
    - BackgroundImage: Used into ZStack to display the background.
    - Memoji: Used to display the profile image of the user.
- ## COUNTER VIEW
    - Used ZStack to display the background image.
      - Attributes used:
        - **Image**: A view that displays an image.
        - **.resizable()**: sets the mode by which SwiftUI resizes an image to fit its space.
        - **.edgesIgnoringSafeArea(.all)**: changes the view's proposed area to extend outside the screen's safe area.
    - VStack declared inside the ZStack.
        - Logic available in the code file CounterView.
- ## PROFILE APP 01 APP
    - Renders the CounterView file into it, to display into the homescreen.
    

## RESULT
<p align="center">
  <img width="390" alt="Output" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/2fb7e892-42ba-4403-8821-1fb30bd4b50a">
</p>
