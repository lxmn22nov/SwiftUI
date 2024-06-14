### Airbnb Clone App
An Airbnb clone operates an online marketplace for short & long-term homestays & experiences. Airbnb acts as a broker & charges a commission from each booking. 

### Overview:
<table>
  <tr>
    <td>File Structure</td>
    <td>Files</td>
    <td>Key Topics/Keywords</td>
  </tr>
  <tr>
    <td>App Folder</td>
    <td>AirBNB_CloneApp.swift</td>
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
      <ins><b> Components </b></ins>
      <dl><ul> ListingImageCarouselView.swift </ul></dl>
      <dl><ul> RatingView.swift </ul></dl>
      <dl><ul> LoginButtonView.swift </ul></dl>
      <dl><ul> AirbnbSplashScreenView.swift </ul></dl>
      <ins><b> Explore </b></ins>
      <dl>
        <ins><ul><b> Service: </b></ul></ins>
        <dl><ul> ExploreService.swift </ul></dl>
        <ins><ul><b> View: </b></ul></ins>
        <dl><ul> ExploreView.swift </ul></dl>
        <dl><ul> SearchAndFilterBar.swift </ul></dl>
        <dl><ul> DestinationSearchView.swift </ul></dl>
        <ins><ul><b> ViewModel: </b></ul></ins>
        <dl><ul> ExploreViewModel.swift </ul></dl>
      </dl>
      <ins><b> Listings </b></ins>
      <dl>
        <ins><ul><b> Model: </b></ul></ins>
        <dl><ul> Listing.swift </ul></dl>
        <ins><ul><b> View: </b></ul></ins>
        <dl><ul> ListingItemView.swift </ul></dl>
        <dl><ul> ListingDetailView.swift </ul></dl>
      </dl>
      <ins><b> Profile </b></ins>
      <dl>
        <dl><ul> ProfileView.swift </ul></dl>
        <dl><ul> ProfileOptionRowView.swift </ul></dl>
      </dl>
      <ins><b> TabBar </b></ins>
      <dl>
        <dl><ul> MainTabView.swift </ul></dl>
      </dl>
      <ins><b> Wishlist </b></ins>
      <dl>
        <dl><ul> WishlistView.swift </ul></dl>
      </dl>
    </td>
  <td>
    <dl><b>ListingImageCarouselView:</b> consists the image, in <b>tabViewStyle(.page)</b>.</dl>
    <dl><b>RatingView:</b> consists rating view.</dl>
    <dl><b>LoginButtonView:</b> Log-in button view.</dl>
    <dl><b>AirbnbSplashScreenView:</b> consists the splash screen view, which bumps in when we start the app.</dl>
    <dl><b>ExploreService:</b> consists the function which fetches the listings from the Developer preview.</dl>
    <dl><b>ExploreView:</b> This is the explore view where all the properties are listed.</dl>
    <dl><b>SearchAndFilterBarView:</b> feature which is used to search the property according to the need.</dl>
    <dl><b>DestinationSearchView:</b> consists rating view.</dl>
    <dl><b>ExploreViewModel:</b> consists functions like fetchListings, updateListingsForLocation.</dl>
    <dl><b>RatingView:</b> consists rating view.</dl>
    <dl><b>Listing:</b> this swift file consists the data model which have the struct explaining the constants, variables and enums.</dl>
    <dl><b>ListingItemView:</b> created a frame where our image resides, with text details explaining about the place.</dl>
    <dl><b>ListDetailView:</b> consists a description of a property like who is the host, how much rooms the property has, amenities offering.</dl>
    <dl><b>ProfileView:</b> consists the log-in bar, with feature like settings, accessibility & help center.</dl>
    <dl><b>ProfileOptionRowView:</b> settings view.</dl>
    <dl><b>MainTabView:</b> created a tab view labelling ExploreView(), WishlistView(), ProfileView().</dl>
    <dl><b>WishlistView:</b> consists liked places.</dl>
  </td>
  </tr>
  <tr>
    <td>Extensions Folder</td>
    <td>
      <dl> DeveloperPreview.swift </dl>
      <dl> Regions.swift </dl>
    </td>
    <td>
      <dl> This swift file contains the mock data, which consists the hard-coded details like ownerId, ownerName, address, city, state, latitude & longitude etc. </dl>
      <dl> This swift file contains the <b>CLLocationCoordinates2D</b> of the declared places. </dl>
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
    <td>App Icon View.</td>
    <td>Explore View.</td>
    <td>Listing View.</td>
    <td>Wishlist View.</td>
    <td>Profile View.</td>
  </tr>
  <tr>
<!--     <td><img src="screenshots/Screenshot_1582745092.png" width=270 height=480></td> -->
    <td><img width="273" alt="AppIcon" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/aaf87ade-ec8c-4d50-a4db-5d1e95f65917"></td>
    <td><img width="278" alt="Explore View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/e6f36d94-0735-4e3a-9c96-77847ac3f310"></td>
    <td><img width="278" alt="Listing View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/3584c537-47c5-4ccd-b98b-222469febc85"></td>
    <td><img width="278" alt="Wishlist View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/f5347bd2-b058-42bc-aadb-915487c26209"></td>
    <td><img width="278" alt="Profile View" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/0005f5b5-99b4-46e7-a718-fd02f7f5e514"></td>
  </tr>
 </table>

### Glimpse of App

<!-- https://github.com/lxmn22nov/SwiftUI/assets/126524753/e0519657-6a60-439f-ae0b-55fb9efd4725 -->
