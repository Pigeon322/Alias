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
        PlainLabel(text: "Выберите наборы слов")
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
