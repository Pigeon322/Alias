//
//  TeamViewModel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 28.06.2024.
//

import SwiftUI

final class TeamViewModel: ObservableObject {
    @Published var title: String
    @Published var teams: [Team] = []
    @Published var destination: Destination?
    
    init(
        title: String,
        playersCount: Int
    ) {
        self.title = title
        createTeams(playersCount: playersCount)
    }
    
    
    private func createTeams(playersCount: Int) {
        switch playersCount {
        case 3:
            let firstTeam = createTeam(
                name: "Дикие волки",
                icon: "", // TODO: - Добавить иконку
                color: .blue,
                playersCount: 1
            )
            
            let secondTeam = createTeam(
                name: "Бешеные медведи",
                icon: "", // TODO: - Добавить иконку
                color: .red,
                playersCount: 1
            )
            
            let thirdTeam = createTeam(
                name: "Пушистые котики",
                icon: "", // TODO: - Добавить иконку
                color: .gray,
                playersCount: 1
            )
            
            teams.append(firstTeam)
            teams.append(secondTeam)
            teams.append(thirdTeam)
        default:
            let maxValue = playersCount / 2
            let minValue = playersCount - maxValue
            
            let firstTeam = createTeam(
                name: "Дикие волки",
                icon: "", // TODO: - Добавить иконку
                color: .blue,
                playersCount: maxValue
            )
            
            let secondTeam = createTeam(
                name: "Бешеные медведи",
                icon: "", // TODO: - Добавить иконку
                color: .red,
                playersCount: minValue
            )
            
            teams.append(firstTeam)
            teams.append(secondTeam)
        }
    }
    
    private func createTeam(
        name: String,
        icon: String,
        color: Color,
        playersCount: Int
    ) -> Team {
        Team(
            name: name,
            icon: icon,
            color: color,
            playersCount: playersCount
        )
    }
}
