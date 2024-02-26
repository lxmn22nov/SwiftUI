### Weather App
This Weather App is made using CoreLocation(iOS SDK), OpenWeatherAPI and SwiftUI views.

### Overview:
<table>
  <tr>
    <td>File Structure</td>
    <td>Files</td>
    <td>Key Topics/Keywords</td>
  </tr>
  <tr>
    <td>App Folder</td>
    <td>Weather_App.swift</td>
    <td>From here we can run the ContentView() file.</td>
  </tr>
  <tr>
    <td>Assets Folder</td>
    <td>Assets.xcassets</td>
    <td>Here, we have AppIcons.</td>
  </tr>
  <tr>
    <td>Extensions Folder</td>
    <td>Extensions.swift</td>
    <td>
      <dl>Double extension: created function roundDouble.</dl>
      <dl>View extension: created function cornerRadius.</dl> 
    </td>
  </tr>
  <tr>
    <td>Managers Folder</td>
    <td>LocationManager.swift</td>
    <td>
      <dl>
        Created class LocationManager which uses following protocols:
        <dl><ins><b>NSObject:</b></ins> The root class of most Objective-C class hierarchies, from which subclasses inherit a basic interface to the runtime system and the ability to behave as Objective-C objects.</dl>
        <dl><ins><b>ObservableObject:</b></ins> The ObservableObject conformance allows instances of this class to be used inside views, so that when important changes happen the view will reload. The @Published property wrapper tells SwiftUI that changes should trigger view reloads.</dl>
        <dl><ins><b>CLLocationManagerDelegate:</b></ins> The methods that you use to receive events from an associated location-manager object.</dl>
      </dl>
    </td>
  </tr>
  <tr>
    <td>Preview Content Folder</td>
    <td>
      <dl>Preview Assets.xcassets</dl>
      <dl>ModelData.swift</dl>
      <dl>weatherData.json</dl>
    </td>
    <td>
      <dl><ins><b>Preview Assets.xcassets:</b></ins> Previews the used assets in the app.</dl>
      <dl><ins><b>ModelData.swift:</b></ins> consists response body which loads the weatherData.json.</dl>
      <dl><ins><b>weatherData.json:</b></ins> consists a JSON data for demonstration purpose.</dl>
    </td>
  </tr>
  <tr>
    <td>Views Folder</td>
    <td>
      <dl>ContentView.swift</dl>
      <dl>LoadingView.swift</dl>
      <dl>WeatherRowView.swift</dl>
      <dl>WeatherView.swift</dl>
      <dl>WelcomeView.swift</dl>
    </td>
    <td>
      <dl><ins>ContentView.swift:</ins> helps us to show the complete app, attached every single view to the WeatherView.</dl>
      <dl><ins>LoadingView.swift:</ins> shows ProgressView() while transitioning.</dl>
      <dl><ins>WeatherRowView.swift:</ins> Component which shows max temperature, min temperature ,wind speed and humidity.</dl>
      <dl><ins>WeatherView.swift:</ins> displays the beautiful UI where WeatherRowView is attached to it, completes the UI.</dl>
      <dl><ins>WelcomeView.swift:</ins> Welcomes to the app, with LocationButton without giving gps access it can't be accessed.</dl>
    </td>
  </tr>
</table>


### RESULTS
Snippets of the app.

<table>
  <tr>
    <td>Welcome View.</td>
    <td>Weather View.</td>
  </tr>
  <tr>
<!--     <td><img src="screenshots/Screenshot_1582745092.png" width=270 height=480></td> -->
    <td><img width="273" alt="Screenshot 2024-02-26 at 4 16 56 PM" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/e3cf3d71-d5c5-4844-a7c2-ffa9fa003ce3"></td>
    <td><img width="278" alt="Screenshot 2024-02-26 at 4 20 10 PM" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/f9708e38-06c5-4a38-993c-9b606102fbef"></td>
  </tr>
 </table>

### Glimpse of App

https://github.com/lxmn22nov/SwiftUI/assets/126524753/e0519657-6a60-439f-ae0b-55fb9efd4725
