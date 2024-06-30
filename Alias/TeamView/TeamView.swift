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
            PlainLabel(text: "Разделитесь на команды")
            
            teamBlock
        }
    }
    
    private var teamBlock: some View {
        VStack {
            
        }
    }
    
    @ViewBuilder
    private func teamView(team: Team) -> some View {
        HStack {
            Image("Image") // TODO: - Добавить картинки
            
            label(text: team.name)
        }
    }
    
    @ViewBuilder
    private func label(text: String) -> some View {
        HStack {
            Text(text)
                .font(.system(size: 15))
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
            
            Image("Image")
        }
    }
}
