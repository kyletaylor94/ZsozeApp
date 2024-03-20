//
//  SettingsView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var isUserSignIn: Bool
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.background
                    .ignoresSafeArea()
                
                VStack{
                    HStack{
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "arrow.left.circle.fill")
                        }
                        .foregroundStyle(.black, .white)
                        .font(.system(size: 20))
                        
                        Text("Beállítások")
                            .textCase(.uppercase)
                            .font(.title)
                            .fontWeight(.heavy)
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
                ScrollView{
                    ForEach(SettingTitles.allCases){ settingTitle in
                        NavigationLink {
                            switch settingTitle{
                            case .notificationsettings:
                                NotificationSettingsView()
                            case .aszf:
                                TermsView()
                            case .privacy:
                                PrivacyPolicyView()
                            case .prizedraw:
                                PrizeDawView()
                            }
                        } label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Image(systemName: settingTitle.imageName)
                                        .imageScale(.large)
                                    
                                    Text(settingTitle.titleName)
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                    
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .imageScale(.large)
                                        .fontWeight(.semibold)
                                }
                                .padding(.horizontal)
                                
                                Divider()
                                    .padding(8)
                            }
                            .padding(8)
                        }
                        .buttonStyle(.plain)
                        
                    }
                    
                    VStack(spacing: 30){
                        Spacer()
                        Button(action: {
                            //
                        }, label: {
                            Text("Kijelentkezés")
                        })
                        .foregroundStyle(.black)
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(width: UIScreen.main.bounds.width - 70, height: 60)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundStyle(.white)
                        )
                        
                        Button(action: {
                            //
                        }, label: {
                            Text("Profil törlés")
                                .foregroundStyle(.white)
                                .font(.title3)
                                .fontWeight(.bold)
                        })
                        .frame(width: UIScreen.main.bounds.width - 70, height: 60)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.red, style: StrokeStyle())
                                .fill(.red.opacity(0.1))
                        )
                    }
                    .opacity(isUserSignIn ? 1.0 : 0.0)
                    
                    Spacer()
                    VStack{
                        Text("Zsozeatya IOS")
                        Text("v1.0.1- (build 7)")
                        Text("564354253451231231231233")
                        Text("Impresszum")
                    }
                    .font(.footnote)
                }
                .navigationBarBackButtonHidden()
                .padding(.top, 50)
            }
        }
    }
}

#Preview {
    NavigationStack{
        SettingsView(isUserSignIn: .constant(false)).preferredColorScheme(.dark)
    }
}
