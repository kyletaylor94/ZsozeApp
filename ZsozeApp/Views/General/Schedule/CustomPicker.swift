//
//  CustomPicker.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import SwiftUI

struct CustomPicker: View {
    @Binding var selectedItem: Int
    @State private var isPressed: Bool = false
    
    var body: some View {
        ZStack(alignment: .top){
            TabView(selection: $selectedItem){
                ScheduleCellView()
                    .tag(0)
                ScheduleActualView()
                    .tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            HStack(spacing: 100){
                ForEach(ScheduleTabSelection.allCases) { item in
                    Button(action: {
                        withAnimation(.linear.speed(3)) {
                            selectedItem = item.rawValue
                            isPressed = true
                        }
                    }, label: {
                        VStack(spacing: 10){
                            Text(item.titleName)
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                                .fontWeight(.heavy)
                            
                            Rectangle()
                                .frame(width: 100,height: 1)
                                .foregroundStyle((selectedItem == item.rawValue) ? .tab : .background)
                                .transition((selectedItem == item.rawValue) ? .move(edge: .leading) : .move(edge: .trailing))
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    CustomPicker(selectedItem: .constant(0))
}
