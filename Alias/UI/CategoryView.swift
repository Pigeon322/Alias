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
        ZStack {
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
        .frame(maxWidth: .infinity)
        .frame(height: 150)
        .background(Image(category.icon))
        .cornerRadius(15)
        .overlay {
            RoundedRectangle(cornerRadius: 15)
                 .stroke(.white, lineWidth: 5)
        }
    }
}
