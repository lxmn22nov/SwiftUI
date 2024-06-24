### Landmark App
Landmark App provides the information of the famous places resides in the Uttrakhand or on the outskirts of the Uttrakhand, with detail description of particular place, with map location etc.

### Learning: 
01. <b>Views:</b> In SwiftUI almost everything is a view. eg: Text, Image, Button, TextField, Layout Contains(HStack, VStack, ZStack, List, Forms), Custom Views, modifiers, etc. Allows us to build complex interfaces efficiently.
02. <b>Spacer:</b> A view that expands to make its containing view take up all available space in the layout. It's a powerful and flexible way to control the layout and spacing of views within a container.
03. <b>Divider:</b> A view used to create a horizontal or vertical line that visually separates content. It's commonly used to add visual distinction between sections of a user interface.
04. <b>MapKit:</b> It allows us to seamlessly integrate the powerful mapping capabilities of MapKit into your SwiftUI user interface.
05. <b>Model:</b> It involves defining a Swift struct or class that encapsulates the data and functionality related to a specific entity or object within our app. Models are crucial for maintaining the state and logic of our app's data, which can then be displayed & interacted with in our SwiftUI views.
06. <b>Protocols:</b> Codable, Hashable, Identifiable
07. <b>NavigationLink:</b> It is used to navigate between views within a NavigationView. It provides a way to create hierarchical navigation in our app, enabling you to push new views onto a navigation stack.
08. <b>State:</b> When our model needs to be observed for changes and updated in our SwiftUI views, we can use @State property wrapper, track changes For local state within a view.
09. <b>Data Binding:</b> The synchronization of data between views and their underlying data sources. It ensures that changes in one part of the UI are reflected in other parts seamlessly.
10. <b>Environment property wrapper:</b> Allows us to define custom environment values that can be accessed and modified within views using @Environment.

### Overview:
<table>
  <tr>
    <td>File Structure</td>
    <td>Files</td>
    <td>Key Topics/Keywords</td>
  </tr>
  <tr>
    <td>App Folder</td>
    <td>LandmarkApp.swift</td>
    <td>From here, we can run the ContentView() file.</td>
  </tr>
  <tr>
    <td>Assets Folder</td>
    <td>Assets.xcassets</td>
    <td>Here, we have AppIcons, Images.</td>
  </tr>
  <tr>
    <td>JsonFiles</td>
    <td>landmarkData.json</td>
    <td>This json files contains the data, which is mapped to the model.</td>
  </tr>
  <tr>
    <td>Model</td>
    <td>
      <dl>Landmark.swift</dl>
      <dl>ModelData.swift</dl>
    </td>
    <td>
      <dl>This file consists the structure with properties matching with the json data file.</dl>
      <dl>This file fetches JSON data with a given name from the app's main bundle.</dl>
    </td>
  </tr>
  <tr>
    <td>Views</td>
    <td>
      <ins><b>ContentView.swift</b></ins>
      <dl><b>Landmarks</b></dl>
      <dl><ul>LandmarkRowView.swift</ul></dl>
      <dl><ul>LandmarkListView.swift</ul></dl>
      <dl><ul>LandmarkDetailView.swift</ul></dl>
      <ins><b>Components</b></ins>
      <dl><ul>HaldwaniImageView.swift</ul></dl>
      <dl><ul>MapView.swift</ul></dl>
      <dl><ul>FavoriteButtonView.swift</ul></dl>
    </td>
    <td>
      <dl><b>LandmarkRowView:</b>It creates the list's row view.</dl>
      <dl><b>LandmarkListView:</b>It consists all the row views into the List.</dl>
      <dl><b>LandmarkDetailView:</b>It consits the detail/description of the particular row view.</dl>
      <dl><b>HaldwaniImageView:</b>It creates the description's image view.</dl>
      <dl><b>MapView:</b>It consists the coordinates, private computed variables, holds the region info for the map.</dl>
      <dl><b>FavoriteButtonView:</b>It consits the button, which is to be placed in the description of the row view of the particular place.</dl>
    </td>
  </tr>
  <tr>
    <td>Preview Content Folder</td>
    <td>
      <dl>Preview Assets.xcassets</dl>
    </td>
    <td>
      <dl><ins><b>Preview Assets.xcassets:</b></ins> Previews the used assets in the app.</dl>
    </td>
  </tr>
</table>

### RESULTS
Snippets of the app.

<table>
  <tr>
    <td>Home View.</td>
    <td>Detail View.</td>
    <td>Favorite Only View.</td>
  </tr>
  <tr>
<!--     <td><img src="screenshots/Screenshot_1582745092.png" width=270 height=480></td> -->
    <td><img width="273" alt="Home View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/b4462539-d1b1-4134-bc47-07f857901de4"></td>
    <td><img width="278" alt="Detail View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/2196b420-3ebc-4d9c-82cf-b1ce626e3c55"></td>
    <td><img width="278" alt="Favorite only View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/2b3631c7-a462-4888-a751-187f3c9fda36"></td>
  </tr>
 </table>

### Glimpse of App

