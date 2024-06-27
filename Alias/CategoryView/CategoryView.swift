//
//  CategoryView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

struct CategoryView: View {
    
    @StateObject private var viewModel = CategoryViewModel()
    
    init(playersCount: Int) {
        viewModel.playersCount = playersCount
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CategoryView(playersCount: 2)
}
