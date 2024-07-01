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
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(.black)
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
            Image("Image") // TODO: - Добавить картинки
            
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
            
            Image("Image") // TODO: - картинка с человечком
        }
        .frame(alignment: .trailing)
        .frame(maxHeight: .infinity)
        .background(.yellow)
    }
}
