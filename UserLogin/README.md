### UserLogin App
- The User Login Authentication App is a robust & secure mobile app built using SwiftUI, Firebase Authentication & Firestore Database. 
- This app provides a seamless user experience for registering, sign-in's, sign-up's & managing user sessions.
- With real-time data synchronization, ensures any changes in user data reflected across all connected devices & security at its core.

### Overview:
<table>
  <tr>
    <td>File Structure</td>
    <td>Files</td>
    <td>Key Topics/Keywords</td>
  </tr>
  <tr>
    <td>App Folder</td>
    <td>UserLoginApp.swift</td>
    <td>From here, we can run the ContentView() file.</td>
  </tr>
  <tr>
    <td>Assets Folder</td>
    <td>Assets.xcassets</td>
    <td>Here, we have AppIcons, Images.</td>
  </tr>
  <tr>
    <td>Components Folder</td>
    <td>
      <dl>InputView.swift</dl>
      <dl>SettingsRowView.swift</dl>
      <dl>ImageViewComponent.swift</dl>
    </td>
    <td>
      <dl>This component is used for the text-fields in the LoginView & RegistrationView, like EmailAddress, Password, ConfirmPassword, FullName etc.</dl>
      <dl>This component is used in the Profile view, settings row.</dl>
      <dl>This component is used to use logo in multiple views with modifiers.</dl>
    </td>
  </tr>
  <tr>
    <td>Core Folder</td>
    <td> 
      <ins><b>Authentication Folder:</b></ins>
      <dl>
        <ul><b>View Folder:</b></ul>
      </dl>
      <dl>
        <ul>ForgotPasswordView.swift</ul>
      </dl>
      <dl>
        <ul>LoginView.swift</ul>
      </dl>
      <dl>
        <ul>RegistrationView.swift</ul>
      </dl>
      <dl>
        <ul><b>ViewModel Folder:</b></ul>
      </dl>
      <dl>
        <ul>AuthViewModel.swift</ul>
      </dl>
      <ins><b>Profile Folder:</b></ins>
      <dl>
        <dl><ul>ProfileView.swift</ul></dl>
      </dl>
      <ins><b>Root Folder:</b></ins>
      <dl>
        <dl><ul>ContentView.swift</ul></dl>
      </dl>
    </td>
  <td>
    <dl><b>ForgotPasswordView.swift:</b>This view consists email address textfield to reset the forgotten password.</dl>
    <dl><b>LoginView.swift:</b>This view consists text-fields like email-address, password, sign-in button & forgot password navigation button.</dl>
    <dl><b>RegistrationView.swift:</b>This view consists text-fields like email-address, password, confirmPassword, fullName with sign-up button, registers the data directly to the Firestore Database.</dl>
    <dl><b>AuthViewModel.swift:</b>This viewModel consists logic for userSession, functions for signIn, signOut, fetchUser, createUser, deleteAccount.</dl>
    <dl><b>ProfileView.swift:</b>This view consists multiple sections which consists the user details, app version, sign-out and delete account sections.</dl>
    <dl><b>ContentView.swift:</b>Delivers the app.</dl>
  </td>
  </tr>
  <tr>
    <td>Model Folder:</td>
    <td>
      <dl> User.swift </dl>
    </td>
    <td>
      <dl>This model contains the struct which defines the variable which formats, the name of the user.</dl>
    </td>
  </tr>
  <tr>
    <td>Preview Content Folder</td>
    <td>
      <dl>Preview Assets.xcassets</dl>
    </td>
    <td>
      <dl> Previews the used assets in the app.</dl>
    </td>
  </tr>
</table>


### RESULTS
Snippets of the app.

<table>
  <tr>
    <th>Login View.</th>
    <th>ForgetPassword View.</th>
    <th>Registration View.</th>
    <th>Profile View.</th>
  </tr>
  <tr>
<!--     <td><img src="screenshots/Screenshot_1582745092.png" width=270 height=480></td> -->
    <td><img width="273" alt="Login View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/88c44454-09dc-471d-b90f-a123c4871f2e"></td>
    <td><img width="278" alt="ForgetPassword View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/cef7de59-4a91-4a1f-94f2-c693c75e66a7"></td>
    <td><img width="278" alt="Registration View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/32567813-1eac-4c3c-b937-dd8be625d114"></td>
    <td><img width="278" alt="Profile View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/f338b5de-c371-466f-99ae-cbf423cd886b"></td>
  </tr>
 </table>

### Glimpse of App
https://github.com/lxmn22nov/SwiftUI/assets/126524753/080647cc-f177-43cd-a2c6-57e94ef83a6d

https://github.com/lxmn22nov/SwiftUI/assets/126524753/880d868e-8a31-45b1-81ab-897489c88a47

