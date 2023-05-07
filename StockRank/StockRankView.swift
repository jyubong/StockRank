//
//  ContentView.swift
//  StockRank
//
//  Created by 김진주 on 2023/05/07.
//

import SwiftUI

struct StockRankView: View {
    
    @State var list: [StockModel] = StockModel.list
    
    var body: some View {
        NavigationView {
            List($list) { $item in
                ZStack {
                    NavigationLink {
                        StockDetailView(stock: $item)
                    } label: {
                        EmptyView()
                    }
                    .opacity(0)
                    
                    StockRankCell(stock: $item)
                }
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Stock Rank")
        }
    }
}

struct StockRankView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
    }
}
