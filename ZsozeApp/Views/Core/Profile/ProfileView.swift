//
//  ProfileView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                Color.background
                    .ignoresSafeArea()
                
                HStack{
                    Text("Profilom")
                        .textCase(.uppercase)
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    
                    NavigationLink {
                        SettingsView(isUserSignIn: .constant(false))
                    } label: {
                        Image(systemName: "gear.circle.fill")
                    }
                    .font(.system(size: 25))
                    .foregroundStyle(.black, .white)
                }
                .padding(.horizontal)
                
                VStack(spacing: 20){
                    Image(.profilezsoze)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width - 32,height: 130)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                    Text("Jelentkezz be, hogy részt vegyél a nyereményjátékokban!")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack(spacing: 15){
                        Button(action: {
                            //
                        }, label: {
                            HStack{
                                Image(systemName: "applelogo")
                                Text("Apple bejelentkezés")
                            }
                            .foregroundStyle(.white)
                            .font(.title)
                            .fontWeight(.semibold)
                        })
                        .frame(width: UIScreen.main.bounds.width - 32,height: 55)
                        .background(
                            Capsule()
                                .foregroundStyle(.black)
                        )
                        
                        Button(action: {
                            //
                        }, label: {
                            HStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 38,height: 30)
                                    .foregroundStyle(.red)
                                    .overlay(
                                        Image(systemName: "play.fill")
                                            .font(.system(size: 15))
                                            .foregroundStyle(.white)
                                    )
                                
                                Text("Youtube bejelentkezés")
                                    .foregroundStyle(.gray)
                            }
                            .font(.title)
                            .fontWeight(.semibold)
                        })
                        .frame(width: UIScreen.main.bounds.width - 32,height: 55)
                        .background(
                            Capsule()
                                .foregroundStyle(.white)
                        )
                        
                        HStack{
                            Text("Olvasd el az")
                            
                            Link("ÁSZF-t", destination: URL(string: "https://google.com/")!)
                                .foregroundStyle(.green)
                            
                            Text("és")
                            
                            Link("PP-t", destination: URL(string: "https://google.com/")!)
                                .foregroundStyle(.green)

                        }
                        .font(.subheadline)
                    }
                }
                .padding(.top, 60)
            }
        }
    }
}

#Preview {
    NavigationStack{
        ProfileView().preferredColorScheme(.dark)
    }
}
