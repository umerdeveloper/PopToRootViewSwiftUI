//
//  AppStateViewModel.swift
//  PopToRootView
//
//  Created by Umer Khan on 07/12/2020.
//

import Foundation
final class AppStateViewModel: ObservableObject {
    @Published var shoudPopToRootView: Bool = false
}
