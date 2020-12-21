//
//  View_C.swift
//  PopToRootView
//
//  Created by Umer Khan on 07/12/2020.
//

import SwiftUI

struct View_C: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        
        VStack {
            Title(title: "View_C")
            NavigationLink(destination: View_D(), isActive: $isActive) {
                Button(action: { self.isActive.toggle() }) {
                    Text("Go to View_D").padding()
                }
            }
        }
    }
}

struct View_C_Previews: PreviewProvider {
    static var previews: some View {
        View_C()
    }
}
