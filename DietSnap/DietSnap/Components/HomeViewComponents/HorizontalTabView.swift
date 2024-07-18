//
//  HorizontalTabView.swift
//  DietSnap
//
//  Created by Laxman Singh Koranga on 18/07/2024.
//

import SwiftUI

struct HorizontalTabView: View {
    @State private var currentPage = 0
    
    var body: some View {
        TabView {
            ForEach(0..<2) { index in
                VStack {
//                    Text("Page \(index + 1)")
//                        .font(.largeTitle)
//                        .bold()
//                        .foregroundStyle(Color.white)
//                        .padding()
                    MidSectionView()
                }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .background(Color.white)
        .frame(width: 400, height: 550)
        
        CustomPageControl(
            numberOfPages: 2,
            currentPage: $currentPage,
            currentPageIndicatorTintColor: .smallCircle1,
            pageIndicatorTintColor: .dot,
            dotSize: CGSize(width: 2, height: 2)
        )
        .padding(.top, 10)
    }
        
}

// Custom page control.
struct CustomPageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    var currentPageIndicatorTintColor: UIColor
    var pageIndicatorTintColor: UIColor
    var dotSize: CGSize
    
    class Coordinator: NSObject {
            var parent: CustomPageControl

            init(parent: CustomPageControl) {
                self.parent = parent
            }

            @objc func pageControlChanged(_ sender: UIPageControl) {
                parent.currentPage = sender.currentPage
            }
        }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage
        pageControl.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        pageControl.pageIndicatorTintColor = pageIndicatorTintColor
        pageControl.addTarget(context.coordinator, action: #selector(Coordinator.pageControlChanged(_:)), for: .valueChanged)
        pageControl.transform = CGAffineTransform(scaleX: dotSize.width, y: dotSize.height)

        return pageControl
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
        uiView.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        uiView.pageIndicatorTintColor = pageIndicatorTintColor
        uiView.transform = CGAffineTransform(scaleX: dotSize.width, y: dotSize.height)
    }
}

#Preview {
    HorizontalTabView()
}
