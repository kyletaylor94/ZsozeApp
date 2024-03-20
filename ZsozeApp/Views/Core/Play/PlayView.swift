//
//  PlayView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct PlayView: View {
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                Color(.background)
                    .ignoresSafeArea()
                
                HStack{
                    Text("Csatornáim")
                        .textCase(.uppercase)
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                ScrollView{
                    VStack(spacing: 20){
                        ForEach(PlaySections.allCases){ section in
                            Link(destination: section.linkString, label: {
                                
                                Image(section.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width - 25, height: 100)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(.black,style: StrokeStyle(lineWidth: 1.0))
                                    )
                            })
                        }
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 700)
                }
                .padding(.top, 60)
            }
        }
    }
}



#Preview {
    NavigationStack{
        PlayView().preferredColorScheme(.dark)
    }
}
