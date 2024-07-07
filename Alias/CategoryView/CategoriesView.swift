//
//  CategoriesView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

struct CategoriesView: View {
    
    @StateObject private var viewModel = CategoriesViewModel()
    
    var body: some View {
        VStack(spacing: 15) {
            PlainLabel(text: "Выберите наборы слов")
            
            Spacer()
            
            categoriesView
            
            Spacer()
            
            continueButton
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .padding(.horizontal, 20)
        .background(.black)
        .navigationDestination(for: $viewModel.destination) { destination in
            switch destination {
            case .settings:
                SettingsView()
            default:
                EmptyView()
            }
        }
    }
    
    private var categoriesView: some View {
        ScrollView {
            HStack(spacing: 10) {
                ForEach(viewModel.category, id: \.name) {
                    CategoryView(category: $0)
                }
            }
        }
    }
    
    private var continueButton: some View {
        PlainButton(text: "Продолжить") {
            viewModel.destination = .settings
        }
    }
}
