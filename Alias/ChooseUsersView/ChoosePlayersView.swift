//
//  ChooseUsersView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

struct ChoosePlayersView: View {
    @StateObject private var viewModel = ChoosePlayersViewModel()

    var body: some View {
        VStack {
            PlainLabel(text: "Сколько будет игроков?")
            
            Spacer()
            
            playersNumberView
            
            buttonsStack
            
            PlainButton(text: "Продолжить") {
                viewModel.destination = .category
            }
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(.black)
        .navigationDestination(for: $viewModel.destination) { destination in
            switch destination {
            case .category:
                CategoryView() // TODO: - Нужно как-то прокидывать количество игроков
            default:
                EmptyView()
            }
        }
    }
    
    private var playersNumberView: some View {
        VStack {
            Text(viewModel.playersCount.description)
                .bold()
                .font(.system(size: 280))
                .foregroundStyle(.blue)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: .infinity)
        }
    }
    
    private var buttonsStack: some View {
        HStack(spacing: 15) {
            decrementButton
            
            incrementButton
        }
    }
    
    private var decrementButton: some View {
        VStack {
            Button {
                viewModel.decerement()
            } label: {
                Text("-")
                    .frame(width: 75, height: 75)
                    .font(.system(size: 55))
                    .foregroundColor(Color.black)
                    .background(Color.red)
                    .clipShape(Circle())
            }
        }
    }
    
    private var incrementButton: some View {
        VStack {
            Button {
                viewModel.incerement()
            } label: {
                Text("+")
                    .frame(width: 75, height: 75)
                    .font(.system(size: 55))
                    .foregroundColor(Color.black)
                    .background(Color.green)
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    ChoosePlayersView()
}
