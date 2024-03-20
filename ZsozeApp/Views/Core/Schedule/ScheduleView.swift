//
//  ScheduleView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct ScheduleView: View {
    @State private var selectedTab = ScheduleTabSelection.actual.rawValue
    
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                Color.background
                    .ignoresSafeArea()
                
                VStack(spacing: 20){
                    HStack{
                        Text("Események")
                            .font(.title)
                            .fontWeight(.heavy)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    CustomPicker(selectedItem: $selectedTab)
                }
            }
        }
    }
}


#Preview {
    NavigationStack{
        ScheduleView()
            .preferredColorScheme(.dark)
    }
}
