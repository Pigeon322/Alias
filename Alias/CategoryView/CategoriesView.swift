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
        VStack {
            PlainLabel(text: "Выберите наборы слов")
            
            CategoryView(category: Category(name: "Базовый набор", icon: "checkmark.circle.fill", words: ["Был","Ты","Человек"]))
        }
    }
    
    private var categoriesView: some View {
        ScrollView {
            LazyVStack {
                Section {
                    
                }
            }
        }
    }
}
