//
//  SceduleSelector.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct SceduleSelector: View {
    @State private var selectedTab = 0
    var body: some View {
        VStack{
            TabView(selection: $selectedTab){
                HStack{
                    Text("AKTUÁLIS")
                        .tag(0)
                    
                    Spacer()
                    
                    Text("MENETREND")
                        .tag(1)
                }
                .padding()
            }
            .tabViewStyle(.page)
            
        }
    }
}

#Preview {
    SceduleSelector()
}
