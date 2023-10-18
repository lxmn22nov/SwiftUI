## CALCULATOR APP
- This is the basic calculator performs basic arithmetic operations on the numbers.

- Helps solving complex mathematical calculations.

## [CODE SNIPPET](SwiftUI/Calculator/Calculator/Views/ContentView.swift)
![Screenshot 2023-10-17 at 2 40 12 AM](https://github.com/lxmn22nov/SwiftUI/assets/126524753/ebab5cf5-34ad-42c3-8fb8-0582022f3966)

## METHODOLOGY
- ## FILE STRUCTURE
- CALCULATOR
    - VIEWS
        - COUNTER VIEW
        - KEY VIEW
    - MODEL
        - CALCULATOR MODEL
    - CALCULATOR APP

      
- ### ASSETS
    - Hoperator: opted the color for top horizontal elements.
    - Voperator: opted the color for vertical elements(right).
    - Num: opted the color for the digit elements.

- ### MODEL DEFINITION
    - Created the enum of type String.
        - Stored digits.
        - Stored Arithmetic Operators.
        - Stored decimal/Clear/Percentage/Plus/Minus.

    - Created a variable which stores the color of the elements mentioned in the assets.
        - with the help of switch cases, assigned the particular color to the elements.
            - Top Horizontal elements: **Hoperator(Dark Grey)**.
            - Right Vertical elements: **Voperator(Orange)**.
            - Digits: **Num(Light Grey)**.

    - Created the enum for the operations.
        - Addition.
        - Subtraction.
        - Multiplication.
        - Division.
        - None.

- ### SORTED KEYS
    - Created **KeyView** to keys to function.
        - created **buttons** variable to store the operators and digits which is defined into the **calculatorModel**.
          - This variable buttons is of type of 2D-matrix.

- ### ANIMATION
    - Created the HStack for the calculation area.
        - Named RoundedRectangle.
            - Used **.animation** inbuilt method of Swift for the animation.
                - attributes used like-
                    - **.easeInOut**
                    - **.speed**
                    - **.repeatForever**
                    - **.onAppear**
                    - **.overlay**
- ### ADDED BUTTONS TO THE VIEWS
    - Used forEach loop for iterating the iteratable.
    - defined the function **didTap** to add functionality to the operators.
    - defined the functions like getWidth and getHeight for the sizes of buttons in the UI(User Interface).

- ### LOADED THE VIEWS IN HOMESCREEN
    - To load the **KeyView** into the homescreen of the device, pushed KeyView into the ContentView.
    - And, the Keyview is placed inside the ZStack.
    - Added some Background, with the help of **LinearGradient** method.

- ### FINISHED WITH THE LOGIC PART
    - To check the logic part please check out the **KeyView** file.
---
## RESULT
P.S- Trying to add the video but there are some issues until then...
---
<p align="center">
  <img width="390" alt="Output" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/fef2159f-59bd-49ce-989d-b6eacd536d55">
</p>

**### NOTE:** For now this app do the basic operations, but in near future I'll going to upgrade this app into the scientific calculator.
