//
//  View_A.swift
//  PopToRootView
//
//  Created by Umer Khan on 07/12/2020.
//

import SwiftUI

struct View_A: View {
    @State private var isActive: Bool = false
    @EnvironmentObject var appState: AppStateViewModel
    
    var body: some View {
        
        NavigationView {
            VStack {
                Title(title: "View_A")
                NavigationLink(destination: View_B(), isActive: $isActive) {
                    Button(action: { self.isActive.toggle() }) {
                        Text("Go to View_B").padding()
                    }
                }
                .isDetailLink(false)
            }
        }
        .onReceive(appState.$shoudPopToRootView) { moveToRootView in
            if moveToRootView {
                appState.shoudPopToRootView = false
                isActive = false
            }
        }
    }
}

struct View_A_Previews: PreviewProvider {
    static var previews: some View {
        View_A()
    }
}
