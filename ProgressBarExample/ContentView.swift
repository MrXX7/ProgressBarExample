//
//  ContentView.swift
//  ProgressBarExample
//
//  Created by Oncu Can on 31.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var percent: CGFloat = 0
    var body: some View {
        VStack(spacing: 50) {
            Text("\(Int(percent))%")
                .font(.system(size: 40, weight: .bold))
            
            ProgressBar(width: 300, height: 30, percent: percent, color1: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), color2: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
                .animation(.spring())
            
            Button(action: { percent = CGFloat.random(in: 0...100)}, label: {
                Text("Generate Random Number")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
