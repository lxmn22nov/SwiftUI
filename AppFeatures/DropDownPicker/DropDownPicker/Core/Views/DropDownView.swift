//
//  DropDownView.swift
//  DropDownPicker
//
//  Created by Laxman Singh Koranga on 04/07/2024.
//

import SwiftUI

struct DropDownView: View {
    /// Customization Properties.
    var hint: String
    var options: [String]
    var anchor: Anchor = .bottom
    var maxWidth: CGFloat = 180
    var cornerRadius: CGFloat = 15
    @Binding var selection: String?
    /// View properties.
    @State private var showOptions: Bool = false
    /// Environment scheme.
    @Environment(\.colorScheme) private var scheme
    @SceneStorage("drop_down_zindex") private var index = 1000.0
    @State private var zIndex: Double = 1000.0
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            VStack(spacing: 0) {
                if showOptions && anchor == .top {
                    OptionsView()
                }
                
                HStack(spacing: 0) {
                    Text(selection ?? hint)
                        .foregroundStyle(selection == nil ? .gray : .primary)
                        .fontDesign(.serif)
                        .lineLimit(1)
                
                    Spacer(minLength: 0)
                    
                    Image(systemName: "chevron.down")
                        .font(.title3)
                        .foregroundStyle(.gray)
                        /// Rotating Icon.
                        .rotationEffect(.init(degrees: showOptions ? -180 : 0))
                }
                .padding(.horizontal, 15)
                .frame(width: size.width, height: size.height)
                .background(scheme == .dark ? .black : .white)
                .contentShape(.rect())
                .onTapGesture {
                    /*
                     Whenever a drop-down is tapped, the scene storage will be increased by +1, but the zindex only increases for the tapped drop-down view since it's a state variable, so the currently tapped zindex will only have a higher ZIndex than others. By using this, we can place the active drop-downs at the top of the view hierarchy.
                     */
                    index += 1
                    zIndex = index
                    withAnimation(.snappy) {
                        showOptions.toggle()
                    }
                }
                .zIndex(10)
                
                if showOptions && anchor == .bottom {
                    OptionsView()
                }
            }
            .clipped()
            /// Clips all interaction within it's bounds.
            .contentShape(.rect)
            .background((scheme == .dark ? Color.black : Color.white).shadow(.drop(color: .primary.opacity(0.15), radius: 4)), in: .rect(cornerRadius: cornerRadius))
            .frame(height: size.height, alignment: anchor == .top ? .bottom : .top)
        }
        .frame(width: maxWidth, height: 50)
        .zIndex(zIndex)
    }
    /// Options View.
    @ViewBuilder
    func OptionsView() -> some View {
        VStack(spacing: 10) {
            ForEach(options, id: \.self) { option in
                HStack(spacing: 0) {
                    Text(option)
                        .lineLimit(1)
                    
                    Spacer(minLength: 0)
                    
                    Image(systemName: "checkmark")
                        .font(.caption)
                        .opacity(selection == option ? 1 : 0)
                }
                .foregroundStyle(selection == option ? .primary : Color.gray)
                .animation(.none, value: selection)
                .frame(height: 40)
                .fontDesign(.serif)
                .contentShape(.rect)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selection = option
                        /// Closing drop down view.
                        showOptions = false
                    }
                }
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 5)
        /// Adding Transition.
        .transition(.move(edge: anchor == .top ? .bottom : .top))
    }
    /// Drop Down Direction.
    enum Anchor {
        case top
        case bottom
    }
}

#Preview {
    ContentView()
}

/*
 As you notice, the view may be placed at the top of the view hierarchy and it can ignore all other views, but when placing two drop-downs one after another, the layout cracks because all the drop-downs use the same index zindex, so let's use scene storage to change the zindex based on the active drop-downs.
 */
