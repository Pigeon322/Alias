//
//  ChooseUsersViewModel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

final class ChoosePlayersViewModel: ObservableObject {
    @Published var playersCount = 2
    @Published var destination: Destination?

    
    func incerement() {
        playersCount += 1
    }
    
    func decerement() {
        guard playersCount >= 3 else { return }
        playersCount -= 1
    }
}
