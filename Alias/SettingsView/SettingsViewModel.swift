//
//  SettingsViewModel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 28.06.2024.
//

import Foundation

final class SettingsViewModel: ObservableObject {
    @Published var destination: Destination?
    @Published var roundTime = 60
    @Published var winPoints = 25
    @Published var isDecrementPointsOn = false
    @Published var isBeforeStart: Bool
    @Published var isSoundOn = true
    
    init(isBeforeStart: Bool) {
        self.isBeforeStart = isBeforeStart
    }
}
