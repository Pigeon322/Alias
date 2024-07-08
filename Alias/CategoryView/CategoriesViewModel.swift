//
//  CategoriesViewModel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

final class CategoriesViewModel: ObservableObject {
    @Published var destination: Destination?
    @Published private(set) var selection = Set<Category>()
    @Published var categories: [Category] = [Category(
        name: "Базовый набор",
        icon: "booksCategory",
        words: ["Был","Бы","Ты","Человек"]
    ),
                                           Category(
        name: "Дополнительный набор",
        icon: "additionalCategory",
        words: ["Твою","Дочку","Ебут","Чука","На континенте","Хуй знает", "где"]
    )
    ]
    
    
    func insertCategory(_ category: Category) {
        selection.insert(category)
    }
    
    func removeCategory(_ category: Category) {
        selection.remove(category)
    }
}
