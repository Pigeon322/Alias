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
            
            CategoryView(category: Category(name: "Базовый набор", icon: "booksCategory", words: ["Был","Бы","Ты","Человек"]))
                .padding(.horizontal, 20)
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(.black)
    }
    
    private var categoriesView: some View {
        ScrollView {
            LazyVStack {
                Section {
                    ForEach(viewModel.category, id: \.name) {
                        CategoryView(category: $0)
                    }
                }
            }
        }
    }
}
