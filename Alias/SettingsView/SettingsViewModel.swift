//
//  SettingsViewModel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 28.06.2024.
//

import Foundation

final class SettingsViewModel: ObservableObject {
    @Published var roundTime = 60
    @Published var winPoints = 25
}
