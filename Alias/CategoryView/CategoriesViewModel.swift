//
//  CategoriesViewModel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

final class CategoriesViewModel: ObservableObject {
    
    @Published var category: [Category] = [Category(
        name: "Базовый набор",
        icon: "booksCategory",
        isSelected: false,
        words: ["Был","Бы","Ты","Человек"]
    ),Category(
        name: "Дополнительный набор",
        icon: "additionalCategory",
        isSelected: false,
        words: ["Твою","Дочку","Ебут","Чука"]
    )
    ]
}
