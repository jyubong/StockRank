//
//  StockOfFavorites.swift
//  StockRank
//
//  Created by 김진주 on 2023/05/07.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var NumOfFavorites: Int {
        let favorites = models.filter { $0.isFavorite }
        return favorites.count
    }
}
