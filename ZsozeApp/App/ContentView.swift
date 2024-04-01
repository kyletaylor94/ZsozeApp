//
//  ContentView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @EnvironmentObject var channelSelection: ChannelSelection

    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                switch selectedTab {
                case 0:
                    SafariView()
                case 1:
                    ScheduleView()
                case 2:
                    PlayView()
                case 3:
                    ShopView()
                case 4:
                    ProfileView()
                default:
                    ProgressView()
                }
            }
            
            HStack(spacing: 8){
                ForEach(tabSection.allCases) { item in
                    Button(action: {
                        withAnimation(.easeInOut){
                            selectedTab = item.rawValue
                        }
                        
                    }, label: {
                        Image(systemName: item.imageName)
                            .font(.system(size: 30))
                    })
                    .padding()
                    .background(
                        Circle()
                            .frame(height: 300)
                            
                            .foregroundStyle((selectedTab == item.rawValue) ? .background : .tab)
                            .shadow(color: selectedTab == item.rawValue ? .background: .tab, radius: 6)
                    )
                    .foregroundStyle((selectedTab == item.rawValue) ? .white : .background)
                }
            }
            .background(
                Capsule()
                    .frame(width: UIScreen.main.bounds.width - 30, height: 85)
                    .foregroundStyle(Color(.tab))
            )
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ChannelSelection())
        .preferredColorScheme(.dark)
}
