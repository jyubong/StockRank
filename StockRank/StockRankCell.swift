//
//  StockRankCell.swift
//  StockRank
//
//  Created by 김진주 on 2023/05/07.
//

import SwiftUI

struct StockRankCell: View {
    
    @Binding var stock: StockModel
    
    var body: some View {
        HStack(spacing: 10) {
            Text("\(stock.rank)")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.blue)
                .frame(width: 20, alignment: .leading)
            Image(stock.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            VStack(alignment: .leading) {
                Text(stock.name)
                    .font(.system(size: 16, weight: .bold))
                HStack {
                    Text("\(stock.price) 원")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    Text("\(stock.diff, specifier: "%.2f")%")
                        .font(.system(size: 14))
                        .foregroundColor(stock.diff > 0 ? .red : .blue)
                }
            }
            Spacer()
            Image(systemName: "heart.fill")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth:.infinity, minHeight: 80)
    }
}

struct StockRankCell_Previews: PreviewProvider {
    static var previews: some View {
        StockRankCell(stock: .constant(StockModel.list[0]))
    }
}
