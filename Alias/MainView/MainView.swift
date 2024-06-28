//
//  ContentView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = MainViewModel()

    @State private var tagSelection: String? = nil
    @State private var isPresentedChoosePlayersView = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                PlainButton(text: "Играть") {
                    viewModel.destination = .choosePlayers
                }
                
                buttonsStack
            }
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .background(.black)
            .navigationDestination(for: $viewModel.destination) { destination in
                switch destination {
                case .choosePlayers:
                    ChoosePlayersView()
                case .rules:
                    ChoosePlayersView()
                case .settings:
                    ChoosePlayersView()
                default:
                    ChoosePlayersView()
                }
            }
        }
    }
    
    private var buttonsStack: some View {
        HStack(spacing: 10) {
            rulesButton
            
            settingsButton
        }
        .frame(maxWidth: .infinity)
    }
    
    private var rulesButton: some View {
        PlainButton(
            text: "Правила",
            style: .extra
        ) {
            viewModel.destination = .rules
        }
    }
    
    private var settingsButton: some View {
        PlainButton(
            text: "Настройки",
            style: .extra
        ) {
            viewModel.destination = .settings
        }
    }
    
}

#Preview {
    MainView()
}
