//
//  View_D.swift
//  PopToRootView
//
//  Created by Umer Khan on 07/12/2020.
//

import SwiftUI

struct View_D: View {
    @EnvironmentObject var appState: AppStateViewModel
    var body: some View {
        Title(title: "View_D")
        
        Button(action: {appState.shoudPopToRootView = true }) {
            Text("Pop to RootView (View_A)").padding()
        }
    }
}

struct View_D_Previews: PreviewProvider {
    static var previews: some View {
        View_D()
    }
}
