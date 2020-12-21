//
//  Title.swift
//  PopToRootView
//
//  Created by Umer Khan on 07/12/2020.
//

import SwiftUI

struct Title: View {
    let title: String
    var body: some View {
        ZStack {
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 5))
                .frame(width: 200, height: 200)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.orange)
        }
        
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(title: "View_A")
    }
}
