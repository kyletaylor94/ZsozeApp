//
//  SettingsView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI


struct NotificationSettingsView: View {
    @State private var isOn: [NotificationSettingsTitle:Bool] = [:]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.background.ignoresSafeArea()
            VStack{
                HStack{
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "arrow.left.circle.fill")
                            .foregroundStyle(.black, .white)
                    })
                    .font(.system(size: 25))
                    
                    Text("Értesítési beállítások")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Spacer()
            }
            
            ScrollView{
                VStack(alignment: .leading, spacing: 15){
                    ForEach(NotificationSettingsTitle.allCases){ title in
                        HStack{
                            Image(title.imageName)
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                            
                            Toggle(title.titleName, isOn: Binding(
                                get: {
                                    self.isOn[title] ?? false
                                }, set: {
                                    newValue in self.isOn[title] = newValue
                                }
                            ))
                                .font(.subheadline)
                                .task {
                                    print(isOn.count)
                                }
                        }
                    }
                }
                .padding()
            }
            .padding(.top, 40)
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    NavigationStack{
        NotificationSettingsView().preferredColorScheme(.dark)
    }
}


