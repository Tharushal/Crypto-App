//
//  CoinRowView.swift
//  CryptoApp
//
//  Created by Tharusha Lakshan on 12/7/23.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    
    var body: some View {
        HStack(spacing: 0) {
            
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height:30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
            
            Spacer()
            
            VStack(alignment: .trailing){
                Text("\(coin.currentPrice)")
                    .bold()
                    .foregroundColor(Color.theme.accent)
                Text("\(coin.priceChangePercentage24H ?? 0)%")
                    .foregroundColor((coin.priceChangePercentage24H ?? 0) >= 0 ?
                                     Color.theme.green : 
                                     Color.theme.red
                )
            }
        }
       
    }
}

//#Preview {
////    CoinRowView(coin: dev.coin)
////}
