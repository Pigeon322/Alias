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
            playersCountLabel
            
            Spacer()
            
            playersNumberView
            
            buttonsStack
            
            continueButton
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(.black)
        .navigationDestination(for: $viewModel.destination) { destination in
            switch destination {
            case .category:
                CategoryView(playersCount: viewModel.playersCount)
            default:
                EmptyView()
            }
        }
    }
    
    private var playersCountLabel: some View {
        VStack {
            Text("Сколько будет игроков?")
                .bold()
                .font(.system(size: 35))
                .foregroundStyle(.red)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 10)
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
    
    private var continueButton: some View {
        VStack {
            Button {
                viewModel.destination = .category
            } label: {
                Text("Продолжить")
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
}

#Preview {
    ChoosePlayersView()
}
