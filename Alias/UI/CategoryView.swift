//
//  CategoryView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 03.07.2024.
//

import SwiftUI

struct CategoryView: View {
    let category: Category
    
    var body: some View {
        VStack {
            Text(category.name)
                .bold()
                .font(.system(size: 15))
                .foregroundStyle(.white)
            
            Text(category.words.count.description)
                .bold()
                .font(.system(size: 10))
                .foregroundStyle(.white)
                .background(.blue)
                .cornerRadius(15)
        }
        .frame(maxWidth: .infinity)
        .background(Image("checkmark.circle.fill")) // TODO: - Временно, так должно быть Image(category.icon)
        .border(.white)
    }
}
