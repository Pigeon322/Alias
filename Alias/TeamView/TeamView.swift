//
//  TeamView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 28.06.2024.
//

import SwiftUI

struct TeamView: View {
    
    @State var viewModel: TeamViewModel
    
    var body: some View {
        VStack {
            PlainLabel(
                text: "Разделитесь на команды",
                size: 30
            )
            
            Spacer()
            
            teamBlock
            
            continueButton
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(.black)
        .navigationDestination(for: $viewModel.destination) { destination in
            switch destination {
            case .category:
                CategoryView()
            default:
                EmptyView()
            }
        }
    }
    
    private var teamBlock: some View {
        VStack {
            ForEach(viewModel.teams, id: \.name) {
                teamView(team: $0)
            }
            
            Spacer()
        }
        .padding(.leading, 15)
    }
    
    @ViewBuilder
    private func teamView(team: Team) -> some View {
        HStack {
            Image(systemName: "checkmark.circle.fill") // TODO: - Добавить картинки
              .resizable()
              .frame(width: 40, height: 40) // put your sizes here
              .foregroundColor(team.color)
            
            label(text: team.name)
            
            iconsBlock(teammatesCount: team.playersCount)
        }
        .frame(height: 75)
    }
    
    @ViewBuilder
    private func label(text: String) -> some View {
        HStack {
            Text(text)
                .font(.system(size: 20))
                .foregroundStyle(.white)
                .bold()
            
            Spacer()
        }
    }
    
    @ViewBuilder
    private func iconsBlock(teammatesCount: Int) -> some View {
        HStack {
            PlainLabel(
                text: teammatesCount.description,
                size: 15
            )
            
            Image("checkmark") // TODO: - картинка с человечком
        }
        .frame(alignment: .trailing)
        .frame(maxHeight: .infinity)
    }
    
    private var continueButton: some View {
        PlainButton(text: "Продолжить") {
            viewModel.destination = .category
        }
    }
}
