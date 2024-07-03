### Scrollable-TabView App
- Scrollable-TabView app presents the home page, consists the custom tab bar, which we scroll horizontally or select and jumps over the tab items.

### Overview:
<table>
  
  <tr>
    <td>File Structure</td>
    <td>Files</td>
    <td>Key Topics/Keywords</td>
  </tr>
  
  <tr>
    <td>App Folder</td>
    <td>ScrollableTabViewApp.swift</td>
    <td>From here, we can run the ContentView() file.</td>
  </tr>
  
  <tr>
    <td>Assets Folder</td>
    <td>Assets.xcassets</td>
    <td>Here, we have AppIcons, Images.</td>
  </tr>
  
  <tr>
    <td>Core Folder</td>
    <td> 
      <ins><b> ViewModel </b></ins>
      <dl><ul> ViewModel.swift </ul></dl>
      <ins><b> Models </b></ins>
      <dl>
        <dl><ul> Tab.swift </ul></dl>
      </dl>
      <ins><b> Views </b></ins>
      <dl>
        <dl><ul> HomeView.swift </ul></dl>
      </dl>
    </td>
  <td>
    <dl><b>ViewModel.swift:</b> consists offsetkey struct, extension of view and tabMask function.</dl>
    <dl><b>Tab.swift:</b> this model consists an enum which is following caseIterable with systemImage.</dl>
    <dl><b>HomeView.swift:</b>This view consist custom tab bar, paging view with logic.</dl>
  </td>
  </tr>
  
  <tr>
    <td>Root Folder</td>
    <td>ContentView.swift</td>
    <td><b>ContentView:</b>This view compiles all the views into one and it's delivered to app file.</td>
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
    <th>TabItemView 01.</th>
    <th>TabItemView 02.</th>
    <th>TabItemView 03.</th>
  </tr>
  <tr>
<!--     <td><img src="screenshots/Screenshot_1582745092.png" width=270 height=480></td> -->
    <td><img width="273" alt="Main View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/41ea2f6a-066a-49f8-98e8-61ac48147250"></td>
    <td><img width="278" alt="Light Mode View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/aa36422e-440c-42e7-9dc3-171783a1a9b2"></td>
    <td><img width="278" alt="Dark Mode View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/fd0273d5-1437-4c2b-b35e-923ff80d037d"></td>
  </tr>
 </table>

### Glimpse of App

https://github.com/lxmn22nov/SwiftUI/assets/126524753/14cff2bf-2608-448d-b8c4-4c330862aad4
