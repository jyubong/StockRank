//
//  ContentView.swift
//  StockRank
//
//  Created by 김진주 on 2023/05/07.
//

import SwiftUI

struct StockRankView: View {
    
    @StateObject var vm = StockRankViewModel()
    
    var body: some View {
        NavigationView {
            List($vm.models) { $item in
                ZStack {
                    NavigationLink {
                        StockDetailView(stock: $item, viewModel: vm)
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
