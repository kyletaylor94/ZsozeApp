//
//  TopScrollView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct TopScrollView: View {
    @Binding var selectedChannel: Set<TopScrollSection>
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20){
                ForEach(TopScrollSection.allCases){section in
                    Button(action: {
                        if selectedChannel.contains(section) {
                            selectedChannel.remove(section)
                        } else {
                            selectedChannel.insert(section)
                        }
                        print(selectedChannel)
                    }, label: {
                        Text(section.titleName)
                            .fontWeight(.semibold)
                            .padding()
                    })
                    .foregroundStyle(selectedChannel.contains(section) ? .secondary : .primary)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.black.opacity(0.3))
                            .stroke(selectedChannel.contains(section) ?  .black : .secondary, style: StrokeStyle(lineWidth: 1.0))
                    )
                }
            }
        }
    }
}


#Preview {
    TopScrollView(selectedChannel: .constant(.init()))
        .preferredColorScheme(.dark)
}
