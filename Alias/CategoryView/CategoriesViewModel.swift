//
//  CategoriesViewModel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

final class CategoriesViewModel: ObservableObject {
    
    @Published var destination: Destination?

    @Published var categories: [Category] = [Category(
        name: "Базовый набор",
        icon: "booksCategory",
        isSelected: false,
        words: ["Был","Бы","Ты","Человек"]
    ),
                                           Category(
        name: "Дополнительный набор",
        icon: "additionalCategory",
        isSelected: false,
        words: ["Твою","Дочку","Ебут","Чука"]
    )
    ]
    
    @Published private(set) var selection = Set<Category>()
    
    func insertCategory(_ category: Category) {
        selection.insert(category)
        if let index = self.categories.firstIndex(where: { $0.name == category.name}) {
            categories[index] = Category(name: category.name, icon: category.icon, isSelected: true, words: category.words)

     }
        print("Selection count",selection.count)
    }
    
    func removeCategory(_ category: Category) {
        selection.remove(category)
        if let index = self.categories.firstIndex(where: { $0.name == category.name}) {
            categories[index] = Category(name: category.name, icon: category.icon, isSelected: false, words: category.words)
     }
        print("Selection count",selection.count)
    }
}
