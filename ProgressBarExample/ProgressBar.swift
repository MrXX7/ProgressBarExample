//
//  ProgressBar.swift
//  ProgressBarExample
//
//  Created by Oncu Can on 31.10.2022.
//

import SwiftUI

struct ProgressBar: View {
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 69
    var color1 = Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
    
    var body: some View {
        let multiplier = width / 100
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: percent * multiplier, height: height)
                .background(
                    LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing)
                .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
        )
                .foregroundColor(.clear)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
