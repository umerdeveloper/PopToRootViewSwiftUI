//
//  View_B.swift
//  PopToRootView
//
//  Created by Umer Khan on 07/12/2020.
//

import SwiftUI

struct View_B: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        
        VStack {
            Title(title: "View_B")
            NavigationLink(destination: View_C(), isActive: $isActive) {
                Button(action: { self.isActive.toggle() }) {
                    Text("Go to View_C").padding()
                }
            }
        }
    }
}

struct View_B_Previews: PreviewProvider {
    static var previews: some View {
        View_B()
    }
}
