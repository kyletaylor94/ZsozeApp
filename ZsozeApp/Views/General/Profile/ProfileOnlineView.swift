//
//  ProfileOnlineView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 07/02/2024.
//

import Foundation
import SwiftUI

struct ProfileOnlineView: View {
    var body: some View {
        ZStack{
            Color.background.ignoresSafeArea()
            
            VStack{
                //profile
                VStack{
                    Text("Berbás Krisztián")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("44")
                        .foregroundStyle(.tab)
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                    Text("pont")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
                .padding(.bottom)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: UIScreen.main.bounds.width - 120, height: 250)
                        .foregroundStyle(
                            LinearGradient(colors: [.background, .tab.opacity(0.2),.gray.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                        )
                       
                )
        
                
                //youtube
                
                
                //nyeremenyek
            }
            .navigationTitle("PROFILOM")
        }
    }
}

#Preview {
    ProfileOnlineView().preferredColorScheme(.dark)
}
