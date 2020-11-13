//
//  ContentView.swift
//  Dicee
//
//  Created by Parsa Jabbari on 11/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var diceOne = Int.random(in: 1...6)
    @State var diceTwo = Int.random(in: 1...6)
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: diceOne)
                    DiceView(n: diceTwo)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.diceOne = Int.random(in: 1...6)
                    self.diceTwo = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


