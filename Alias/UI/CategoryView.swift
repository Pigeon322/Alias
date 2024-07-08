//
//  CategoryView.swift
//  Alias
//
//  Created by Artem Golubinskiy on 03.07.2024.
//

import SwiftUI

struct CategoryView: View {
    @State var category: Category
    
    var body: some View {
        VStack {
            textBlock
                .padding(.horizontal, 10)
        }
        .frame(height: 150)
        .background(Image(category.icon).resizable())
        .cornerRadius(15)
        .overlay {
            RoundedRectangle(cornerRadius: 15)
                .stroke(.white, lineWidth: 5)
        }
        .overlay(alignment: .topTrailing) {
            if category.isSelected {
                Image(systemName: "checkmark")
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(25/2)
                    .padding(.top, 10)
                    .padding(.trailing, 10)
            }
        }
    }
    
    private var textBlock: some View {
        VStack {
            Spacer()
            
            Text(category.name)
                .bold()
                .font(.system(size: 20))
                .foregroundStyle(.white)
            
            Spacer()
            
            Text(category.words.count.description)
                .frame(width: 100)
                .frame(height: 25)
                .bold()
                .font(.system(size: 15))
                .foregroundStyle(.white)
                .background(.blue)
                .cornerRadius(15)
                .padding(.bottom, 15)
        }
    }
}
