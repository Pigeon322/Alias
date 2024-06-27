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
                playViewButton
                
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
    
    private var playViewButton: some View {
        VStack {
            Button {
                viewModel.destination = .choosePlayers
            } label: {
                Text("Играть")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(15)
            .padding()
        }
    }
    
    private var buttonsStack: some View {
        HStack(spacing: 10) {
            rulesButton
            
            settingsButton
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
    
    private var rulesButton: some View {
        VStack {
            Button {
                viewModel.destination = .rules
            } label: {
                Text("Правила")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(.red)
            .cornerRadius(15)
        }
    }
    
    private var settingsButton: some View {
        VStack {
            Button {
                viewModel.destination = .settings
            } label: {
                Text("Настройки")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(.red)
            .cornerRadius(15)
        }
    }
    
}

#Preview {
    MainView()
}
