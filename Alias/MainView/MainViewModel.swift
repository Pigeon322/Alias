//
//  MainViewModel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import Foundation


final class MainViewModel: ObservableObject {
    @Published var destination: Destination?
}


enum Destination: Equatable {
    case choosePlayers
    case rules
    case settings
    case teams
    case category
}
