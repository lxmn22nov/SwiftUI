//
//  HikeDetailView.swift
//  Landmark
//
//  Created by Laxman Singh Koranga on 25/06/2024.
//

import SwiftUI

struct HikeDetailView: View {
    let hike: Hike
    @State var dataToShow = \Hike.Observation.elevation
    
    var buttons = [
        ("Elevation", \Hike.Observation.elevation),
        ("Heart Rate", \Hike.Observation.heartRate),
        ("Pace", \Hike.Observation.pace)
    ]
         
    var body: some View {
        VStack {
            HikeGraphView(hike: hike, path: dataToShow)
                .frame(height: 200)
            
            HStack(spacing: 25) {
                ForEach(buttons, id: \.0) { value in
                    Button {
                        dataToShow = value.1
                    } label: {
                        Text(value.0)
                            .font(.system(size: 15))
                            .foregroundStyle(value.1 == dataToShow ? .gray : .accentColor)
                            .animation(nil)
                    }
                }
            }
        }
    }
}

#Preview {
    HikeDetailView(hike: ModelData().hikes[0])
}
