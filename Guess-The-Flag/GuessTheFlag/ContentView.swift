//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Laxman Singh Koranga on 08/01/2024.
//

import SwiftUI

struct ContentView: View {
    // this property to store whether the alert is showing or not.
    @State private var showingScore = false
    
    // this property to store whether the alert is showingGameOver or not.
    @State private var isShowingGameOver = false
    
    // this property to store whether the title that will be shown inside the alert.
    @State private var scoreTitle = ""
    
    // variable storing an array of all the country images we want to show in the game.
    @State private var countries = ["Estonia","France","Germany","Ireland","Italy","Nigeria","Poland","Spain","UK","Ukraine","US"].shuffled()
    
    //
    @State private var currentQuestion: Int = 1
    @State private var selectedAnswer: Int = 0
    
    // automatically picks a random number, decide which country should be tapped.
    @State private var correctAnswer = Int.random(in: 0...2)
    
    // user's score variable.
    @State private var userScore: Int = 0
    
    // challenge variables.
    @State private var isAnimatingOpacity = false
    @State private var rotationAmount = 0.0
    @State private var scaleAmount: CGFloat = 1.0
    
    let labels = [
        "Estonia": "Flag with three horizontal stripes of equal size. Top stripe blue, middle stripe black, bottom stripe white",
        "France": "Flag with three vertical stripes of equal size. Left stripe blue, middle stripe white, right stripe red",
        "Germany": "Flag with three horizontal stripes of equal size. Top stripe black, middle stripe red, bottom stripe gold",
        "Ireland": "Flag with three vertical stripes of equal size. Left stripe green, middle stripe white, right stripe orange",
        "Italy": "Flag with three vertical stripes of equal size. Left stripe green, middle stripe white, right stripe red",
        "Nigeria": "Flag with three vertical stripes of equal size. Left stripe green, middle stripe white, right stripe green",
        "Poland": "Flag with two horizontal stripes of equal size. Top stripe white, bottom stripe red",
        "Russia": "Flag with three horizontal stripes of equal size. Top stripe white, middle stripe blue, bottom stripe red",
        "Spain": "Flag with three horizontal stripes. Top thin stripe red, middle thick stripe gold with a crest on the left, bottom thin stripe red",
        "UK": "Flag with overlapping red and white crosses, both straight and diagonally, on a blue background",
        "US": "Flag with red and white stripes of equal size, with white stars on a blue background in the top-left corner"
    ]
    
    let questionAmount = 11
    
    var body: some View {
        ZStack {
//            Color.blue
//                .ignoresSafeArea()
//            LinearGradient(colors: [.white, .blue, .white], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary )
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                        
                    }
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .accessibilityLabel(labels[countries[number], default: "Unknown flag"])
                                .opacity(isAnimatingOpacity ? (number == correctAnswer ? 1 : 0.25) : 1)
                                .rotation3DEffect(.degrees(number == selectedAnswer ? rotationAmount : 0), axis: (x: 0, y: 1, z: 0))
                                .scaleEffect(number == correctAnswer ? 1 : scaleAmount, anchor: .center)
//                                .clipShape(.rect)
//                                .shadow(color: .blue, radius: 4, x: 3, y: 3)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                .alert(scoreTitle, isPresented: $showingScore) {
                    Button("Continue", action: askQuestion)
                } message: {
//                    Text("Your score is \(userScore).")
                    scoreTitle == "Correct!" ? (Text("Your score is now \(userScore)/\(questionAmount).")) : (Text("Sorry, that's the flag of \(countries[selectedAnswer])!"))
                }
                Spacer()
                Spacer()
                
                Text("Score: \(userScore)/\(questionAmount)")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                    .alert("Game Over!", isPresented: $isShowingGameOver) {
                        Button("Play Again", action: resetGame)
                    } message: {
                        Text("Your final score is \(userScore)/\(questionAmount).")
                    }
                Spacer()
            }
            .padding()
        }
    }
    func flagTapped(_ number: Int) {
        scoreTitle = number == correctAnswer ? "Correct!" : "Incorrect!"
        userScore = number == correctAnswer ? userScore + 1: userScore
        
        selectedAnswer = number
        
        withAnimation(.easeOut) {
            isAnimatingOpacity = true
        }
        withAnimation {
            rotationAmount = 360
            scaleAmount = 0.5
        }
        showingScore = true
    }
    func askQuestion() {
        if currentQuestion == questionAmount {
            isShowingGameOver = true
        } else {
            currentQuestion += 1
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
        }
        isAnimatingOpacity = false
        rotationAmount = 0.0
        scaleAmount = 1.0
    }
    func resetGame() {
        currentQuestion = 1
        userScore = 0
        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    struct FlagImage: View {
        let country: String
        
        init(of country: String) {
            self.country = country
        }
        var body: some View {
            Image(country)
                .renderingMode(.original)
                .clipShape(Capsule())
                .shadow(radius: 5)
        }
    }
}
#Preview {
    ContentView()
}
