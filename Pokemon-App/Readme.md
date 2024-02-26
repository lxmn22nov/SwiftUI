### Pokemon App
This is a simple app, which provides details of the particular type of pokemon like Pokedex does.

### OVERVIEW:
<table>
  <tr>
    <td>File Structure</td>
    <td>Files</td>
    <td>Key Topics/Keywords</td>
  </tr>
  <tr>
    <td>Assets</td>
    <td>Assets.xcassets</td>
    <td>Consists App icons, accent colors.</td>
  </tr>
  <tr>
    <td>Model</td>
    <td>PokemonModel.swift</td>
    <td>Created a struct and declared variables which will fetch/store the data from the API.</td>
  </tr>
  <tr>
    <td>Views</td>
    <td>
      <dl>ContentView.swift</dl>
      <dl>PokeCell.swift</dl>
      <dl>PokemonDetailView.swift</dl>
      <dl>PokemonGridView.swift</dl>
    </td>
    <td>
      <dl><ins>ContentView.swift:</ins> helps us to show the complete app.</dl>
      <dl><ins>PokeCell.swift:</ins> creates a component, single pokemon card.</dl>
      <dl><ins>PokemonDetailView.swift:</ins> creates the pokemon's cell description.</dl>
      <dl><ins>PokemonGridView.swift:</ins> places the PokeCell into the grid.</dl>
    </td>
    <tr>
      <td>ViewModel</td>
      <td>PokemonViewModel.swift</td>
      <td>Creates a baseURL(consists API), functions like fetchData(), backgroundColor() etc.</td>
    </tr>
    <tr>
      <td>Package Dependencies</td>
      <td>Kingfisher 7.11.0</td>
      <td>Swift Library for downloading and caching images from the web.</td>
    </tr>
  </tr>
</table>

### RESULT
<table>
  <tr>
    <td>Pokemon's</td>
    <td>Pokemon Description</td>
  </tr>
  <tr>
    <td><img width="273" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/2fdf80ad-9562-4972-9bed-59f6a3679db3"></td>
    <td><img width="273" src="https://github.com/lxmn22nov/SwiftUI/assets/126524753/9144b6f1-92b4-476e-9a91-188914b23d94"></td>
  </tr>
</table>

### Glimpse of App

https://github.com/lxmn22nov/SwiftUI/assets/126524753/9d87c340-c2e7-457e-8a74-79f760ceee10
