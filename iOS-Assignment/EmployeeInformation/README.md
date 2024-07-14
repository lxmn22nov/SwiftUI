### Employee Information App (SwiftUI)
Simple Employee Information App - <b>iOS ASSIGNMENT</b>:
- Employee Information in a list view.
- On selecting particular Employee, navigates through to the detail view.
- The data which is used in the app is the dummy API(SSL certified).


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
    <td>EmployeeInformationApp.swift</td>
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
      <dl>SplashScreenView.swift</dl>
    </td>
    <td>
      <dl>This component pushes app icon, when app opened.</dl>
    </td>
  </tr>
  <tr>
    <td>Model Folder:</td>
    <td>
      <dl>EmployeeModel.swift </dl>
      <ins><b>WebAPI</b></ins>
      <dl>
      <ins><ul>ErrorCases.swift</ul></ins>
       <ins><ul>WebService.swift</ul></ins>
    </dl>
    </td>
    <td>
      <dl>Defined all the constants and variable available in the API.</dl>
      <dl>Custom error cases are defined for the API integration.</dl>
      <dl>Consists the function, user data returned to EmployeeModel, after API Integration establishment.</dl>
    </td>
  </tr>
  <tr>
    <td>View Folder:</td>
    <td>
      <dl>EmployeeListView.swift </dl>
      <dl>EmployeeDetailView.swift </dl>
      <dl>MainView.swift </dl>
    </td>
    <td>
      <dl>Defined the Employee List which consists the list of employees.</dl>
      <dl>Defined the Employee Detail View consists the image(height: 500px) with all the possible details.</dl>
      <dl>Main view contains the splashScreen and EmployeeListView.</dl>
    </td>
  </tr>
  <tr>
    <td>ViewModel Folder:</td>
    <td>
      <dl>EmployeeListViewModel.swift </dl>
    </td>
    <td>
      <dl>This model contains the function which fetches the users from the API(WebService) file.</dl>
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
    <td><img width="273" alt="Home View" src="https://github.com/user-attachments/assets/ecdbde12-280c-4aff-abfc-83d1da80226b"></td>
    <td><img width="278" alt="Prompt Section" src="https://github.com/user-attachments/assets/e5665674-196e-4471-a54b-d2c46042028c"></td>
    <td><img width="278" alt="Resulted View" src="https://github.com/user-attachments/assets/28138230-7556-4e17-94b7-b0f99b5ee2d6"></td>
    <td><img width="278" alt="Resulted View" src="https://github.com/user-attachments/assets/82a60852-2e45-4ca4-bada-7cbc08f5bd0a"></td>
  </tr>
 </table>

### Glimpse of App 

https://github.com/user-attachments/assets/c494f6e0-bd16-46fa-8ea7-7ff5f7bf5f57
