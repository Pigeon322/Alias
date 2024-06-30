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
        
    }
}
