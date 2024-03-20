//
//  ShopView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 10/02/2024.
//

import SwiftUI
import SDWebImageSwiftUI
 
struct ShopView: View {
    
    let columns = [
        GridItem(.adaptive(minimum: 120)),
        GridItem(.adaptive(minimum: 120))
    ]
    
    @State private var selectedRow: Int = 0

    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                Color.background.ignoresSafeArea()
                VStack{
                    HStack{
                        Text("Shop")
                            .textCase(.uppercase)
                            .font(.title)
                            .fontWeight(.heavy)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    Image(.akciok)
                        .resizable()
                        .scaledToFill()
                        .blur(radius: 6)
                        .overlay(
                            Image(.akciok)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300,height: 90)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(.white, lineWidth: 3.0)
                                )
                        )
                        .frame(height: 110)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .background(RoundedRectangle(cornerRadius: 12).stroke(.black,style: StrokeStyle()))
                    
                    
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(ShopSection.allCases){ section in
                            NavigationLink {
                                ShopItemView(selectedItem: section.rawValue)
                            } label: {
                                CustomShopCell(shopsection: section)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.top, 230)
                    .padding(.horizontal)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 120)
                    
                    Spacer()
                    
                }
                .frame(width: UIScreen.main.bounds.width - 32)
            }
        }
    }
}

#Preview {
    ShopView().preferredColorScheme(.dark)
}




