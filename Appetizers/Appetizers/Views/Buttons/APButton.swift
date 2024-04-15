//
//  APButton.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 21.09.2023.
//

import SwiftUI

struct APButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "Test Button")
    }
}
