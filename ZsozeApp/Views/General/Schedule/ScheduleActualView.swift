//
//  SceduleActualView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct ScheduleActualView: View {
    var body: some View {
        ZStack(alignment: .top){
            Color.background.ignoresSafeArea()
            
            VStack(spacing: 20){
                Link(destination: URL(string: "https://www.youtube.com/@Zsozeatya/videos")!) {
                    CustomActualViewComponent(title: "Live steam minden nap", desription: "20:00-tól a YOUTUBE-on", colorTitle: .white, colorDescription: .blue)
                }
                
                Link(destination: URL(string: "https://www.youtube.com/@ZsozeatyaVOD/videos")!) {
                    CustomActualViewComponent(title: "Elérhető a vod minden nap", desription: "15:00-tól a youtube-on", colorTitle: .white, colorDescription: .red)
                }
            }
            .padding(.top, 50)
        }
    }
}

#Preview {
    ScheduleActualView().preferredColorScheme(.dark)
}

struct CustomActualViewComponent: View {
    let title: String
    let desription: String
    let colorTitle: Color
    let colorDescription: Color
    
    var body: some View {
        Image(.zsoze)
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width - 25, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .blur(radius: 3.0)
            .overlay(
                ZStack{
                    Ellipse()
                        .blur(radius: 3.0)
                        .foregroundStyle(.black)
                        .frame(width: 280, height: 70)
                    VStack{
                        Text(title)
                            .foregroundStyle(colorTitle.opacity(2.3))
                            .font(.headline)
                        Text(desription)
                            .foregroundStyle(colorDescription.opacity(2.3))
                            .font(.subheadline)
                    }
                    .textCase(.uppercase)
                    .fontWeight(.heavy)
                }
            )
            .background(RoundedRectangle(cornerRadius: 12).stroke(.black,style: StrokeStyle(lineWidth: 5)))
            .frame(width: UIScreen.main.bounds.width - 32, height: 100)
    }
}
