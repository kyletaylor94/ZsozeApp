//
//  NotificationCell.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Zsozeatya VOD új videót töltött fel")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .lineLimit(1)
                    
                    Text("zsozeatya vod 1 darab új youtube videót tett közzé")
                        .font(.footnote)
                        .foregroundStyle(Color(.systemGray6))
                        .lineLimit(2)
                    
                    Text("4 órája")
                        .font(.caption)
                        .foregroundStyle(.secondary.opacity(0.9))
                        .lineLimit(1)
                }
                Spacer()
            }
            .padding(.horizontal)
        }
        .frame(width: UIScreen.main.bounds.width - 32, height: 100)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.gray)
        )
    }
}

#Preview {
    NotificationCell()
}
