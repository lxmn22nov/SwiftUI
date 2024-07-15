### Employee Details App (UIKit)
Simple Employee Details App - <b>iOS ASSIGNMENT</b>:
- Employee Details in a table view.
- On selecting particular Employee, navigates through to the detail view.
- The data used in the app is the dummy API(SSL certified), the provided API was not SSL Certified and Apple's ATS can't permit the build, which is unsafe.


## API Reference

#### Get all items

```http
  https://hub.dummyapis.com/employee?noofRecords=100&idStarts=1001 ❌
  https://api.github.com/users ✅
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `_employee` | `string` | **NO SSL Certification** ❌ Apple Transport Security(ATS), after crashing: "ATS failed system trust". |
| `_users` | `string` | **SSL Certified** ✅ Apple Transport Security(ATS) heavy on security. |

## Crash ScreenShot Result:
<table>
  <tr>
    <th>Crash Screenshot: NO SSL Certification.</th>
  </tr>
  <tr>
    <td><img width="273" alt="Home View" src="https://github.com/user-attachments/assets/ab003c80-5e73-461f-9c1c-ff41d7427379"></td>
  </tr>
</table>
  
### Overview:
<table>
  <tr>
    <td>File Structure</td>
    <td>Files</td>
    <td>Key Topics/Keywords</td>
  </tr>
  <tr>
    <td>App Folder</td>
    <td>AppDelegate.swift</td>
    <td>Manages the application's life cycle and global settings, acting as the entry point and coordinating various system-level events in an application.</td>
  </tr>
  <tr>
    <td>Assets Folder</td>
    <td>Assets.xcassets</td>
    <td>Here, we have AppIcons, Images.</td>
  </tr>
  <tr>
    <td></td>
    <td>
      <dl>LaunchScreen.storyboard</dl>
    </td>
    <td>
      <dl>Displays initial launch of the application.</dl>
    </td>
  </tr>
  <tr>
    <td></td>
    <td>
      <dl>Main.storyboard</dl>
    </td>
    <td>
      <dl>Serves as the visual blueprint for your applications user interface (UI) and navigation flow.</dl>
    </td>
  </tr>
  <tr>
    <td></td>
    <td>
      <dl>ViewController.swift</dl>
    </td>
    <td>
      <dl>Manages the presentation and interaction logic of a single screen or view within an app.</dl>
    </td>
  </tr>
  <tr>
    <td></td>
    <td>
      <dl>SceneDelegate.swift</dl>
    </td>
    <td>
      <dl>Manages life cycle events and state transitions for one or more windows in an application.</dl>
    </td>
  </tr>
  <tr>
    <td>Model Folder:</td>
    <td>
      <dl>EmployeeModel.swift </dl>
    </dl>
    </td>
    <td>
      <dl>Defined all the constants and variable available in the API.</dl>
    </td>
  </tr>
  <tr>
    <td>View Folder:</td>
    <td>
      <dl>DetailViewController.swift</dl>
    </td>
    <td>
      <dl>Defines the presentation and behavior of a specific detail screen or view in an iOS application.</dl>
    </td>
  </tr>
  <tr>
    <td>ViewModel Folder:</td>
    <td>
      <dl>EmployeeDetailViewModel.swift </dl>
    </td>
    <td>
      <dl>Encapsulates the logic and data operations specific to displaying and managing employee details in an application using MVVM architecture.</dl>
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
    <th>App Icon.</th>
    <th>Employee List View.</th>
    <th>Detail View 01.</th>
    <th>Detail View 02.</th>
  </tr>
  <tr>
<!--     <td><img src="screenshots/Screenshot_1582745092.png" width=270 height=480></td> -->
    <td><img width="273" alt="" src="https://github.com/user-attachments/assets/56287985-98dd-4575-8a96-6533e1950ae5"></td>
    <td><img width="278" alt="" src="https://github.com/user-attachments/assets/6ac870df-c7f1-49e9-b8d3-4a8f3d5663c0"></td>
    <td><img width="278" alt="" src="https://github.com/user-attachments/assets/88c50303-edc3-4db9-b6f1-1a714aa441af"></td>
    <td><img width="278" alt="" src="https://github.com/user-attachments/assets/15156447-75b8-42b2-8a7b-cff1b7a01f8d"></td>
  </tr>
 </table>

### Glimpse of App 

https://github.com/user-attachments/assets/fb281c41-a27e-4f61-abac-6ed3a311098e


