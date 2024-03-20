//
//  NotificationsView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct NotificationsView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .top){
            Color.background
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                HStack{
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "arrow.left.circle.fill")
                        
                    })
                    .font(.system(size: 25))
                    .foregroundStyle(.black, .white)
                    
                    Text("Értesítések")
                        .textCase(.uppercase)
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                }
                .padding(.horizontal)
            }
            
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    ForEach(0...20, id: \.self){ cell in
                        NotificationCell()
                            .padding(.vertical, 5)
                    }
                }
            }
            .padding(.top , 50)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    NotificationsView().preferredColorScheme(.dark)
}
