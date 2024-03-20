//
//  SafariCellView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct SafariCellView: View {
    let post: Item
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            VStack(alignment: .center){
                WebImage(url: URL(string: post.snippet.thumbnails.high.url))
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 32, height: 210)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .frame(width: 370)
            
            HStack{
                Image(.channelprofile)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text(post.snippet.channelTitle ?? "")
                        .textCase(.uppercase)
                        .fontWeight(.bold)
                        .font(.title3)
                    
                    Text(post.snippet.publishedAt.relativeTimeString())
                        .font(.subheadline)
                        .foregroundStyle(.tab)
                        .fontWeight(.bold)
                }
            }
            .padding()
         
            Text(post.snippet.title)
                .padding(.horizontal)
                .font(.subheadline)
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 32, height: 370)
        .background(
            ZStack{
                Color(.black)
                    .opacity(0.5)
                    .cornerRadius(25)
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(.black, style: StrokeStyle(lineWidth: 1.0))
            }
            .padding(.top, 22)
        )
    }
}

#Preview {
    ZStack{
        Color.background.ignoresSafeArea()
        SafariCellView(post: Item(snippet: Snippet(publishedAt: "4 órája", title: "Erpééé", thumbnails: Thumbnails(high: Thumbnail(url: "")), channelTitle: "Zsozé"))).preferredColorScheme(.dark)
    }
}

extension String {
    func relativeTimeString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        guard let date = dateFormatter.date(from: self) else {
            return "Unknown"
        }
        
        let calendar = Calendar.current
        let now = Date()
        let components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date, to: now)
        
        switch true {
        case components.year ?? 0 > 0:
            return "\(components.year ?? 0) hónapja"
        case components.month ?? 0 > 0:
            return "\(components.month ?? 0) hónapja"
        case components.day ?? 0 > 0:
            return "\(components.day ?? 0) napja"
        case components.hour ?? 0 > 0:
            return "\(components.hour ?? 0) órája"
        case components.minute ?? 0 > 0:
            return "\(components.minute ?? 0) perc"
        case components.second ?? 0 > 0:
            return "\(components.second ?? 0) másodperc"
        default:
            return "Most"
        }
    }
}
