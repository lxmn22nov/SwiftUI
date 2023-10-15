//
//  ContentView.swift
//  slot-machine
//
//  Created by Laxman Singh Koranga on 15/10/2023.
//

import SwiftUI

struct Hexagon: Shape {
    func path(in rect: CGRect) -> Path {
        return Path {path in
            let p1 = CGPoint(x: 0, y: 20)
            let p2 = CGPoint(x: 0, y: rect.height - 20)
            let p3 = CGPoint(x: rect.width/2, y: rect.height)
            let p4 = CGPoint(x: rect.width, y: rect.height - 20)
            let p5 = CGPoint(x: rect.width, y: 20)
            let p6 = CGPoint(x: rect.width/2, y: 0)
            
            path .move(to: p6)
            
            path.addArc(tangent1End: p1, tangent2End: p2, radius: 9)
            path.addArc(tangent1End: p2, tangent2End: p3, radius: 9)
            path.addArc(tangent1End: p3, tangent2End: p4, radius: 9)
            path.addArc(tangent1End: p4, tangent2End: p5, radius: 9)
            path.addArc(tangent1End: p5, tangent2End: p6, radius: 9)
            path.addArc(tangent1End: p6, tangent2End: p1, radius: 9)
            
        }
    }
}

enum Choice: Int, Identifiable {
    
    var Id: Int {
        rawValue
    }
    case success, failure
}

struct ContentView: View {
    
    @State public var symbols = ["eating","happy","love"]
    @State public var numbers = [0,1,2]
    @State public var counter = 0
    @State public var showingAlert = Choice?
    
    var body: some View {
         Text("Hello, world!")
            .padding()
    }
}

#Preview {
    ContentView()
}
