//
//  ShopItemView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 17/02/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct ShopItemView: View {
    let columns = [
        GridItem(.adaptive(minimum: 120)),
        GridItem(.adaptive(minimum: 120))
    ]
    
    @Environment(\.dismiss) var dismiss
    
    var selectedItem: Int
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Color.background.ignoresSafeArea()
            
            VStack{
                HStack{
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "arrow.left.circle.fill")
                    })
                    .font(.system(size: 25))
                    .foregroundStyle(.black, .white)
                    
                    Text("Termékek")
                        .textCase(.uppercase)
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                LazyVGrid(columns: columns, spacing: 20) {
                    if selectedItem == 0 {
                        ForEach(energyDrink.allCases){ section in
                            Link(destination: URL(string: section.link.absoluteString)!, label: {
                                CustomShopItemView(titleName: section.titleName,imageName: section.giftPictures)
                            })
                        }
                    } else if selectedItem == 1 {
                        ForEach(SixPacks.allCases){ section in
                            Link(destination: URL(string: section.link.absoluteString)!, label: {
                                CustomShopItemView(titleName: section.titleName, imageName: section.giftPictures)
                            })
                        }
                    } else if selectedItem == 2 {
                        ForEach(Cloth.allCases){ section in
                            Link(destination: URL(string: section.link.absoluteString)!, label: {
                                CustomShopItemView(titleName: section.titleName, imageName: section.giftPictures)
                            })
                        }
                    } else {
                        ForEach(Gift.allCases){ section in
                            Link(destination: URL(string: section.link.absoluteString)!, label: {
                                CustomShopItemView(titleName: section.titleName, imageName: section.giftPictures)
                            })
                        }
                    }
                    
                }
                .padding(.top, 360)
                .padding(.horizontal)
                .frame(width: UIScreen.main.bounds.width - 32, height: 120)
                
                Spacer()
                
            }
        }
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    ShopItemView(selectedItem: 0).preferredColorScheme(.dark)
}
