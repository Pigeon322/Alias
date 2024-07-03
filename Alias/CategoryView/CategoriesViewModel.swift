//
//  CategoriesViewModel.swift
//  Alias
//
//  Created by Artem Golubinskiy on 27.06.2024.
//

import SwiftUI

final class CategoriesViewModel: ObservableObject {
 
    @Published var category: [Category] = []
}
