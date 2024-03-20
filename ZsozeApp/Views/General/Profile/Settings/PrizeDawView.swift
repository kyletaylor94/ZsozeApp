//
//  PrizeDawView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 11/03/2024.
//

import SwiftUI

struct PrizeDawView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
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
                    
                    Spacer()
                }
                Spacer()
            }
            .padding(.horizontal)
            
            ScrollView{
                VStack(alignment: .leading, spacing: 20){
                    Text("1. Registration and Participation To participate in the prize draw, you must be a registered user in the Zsozeatya application. Only registered users can participate in the draw. By registering, you automatically participate in all future draws.")
                    
                    Text("2. Draw and Selection of Winners Zsozeatya initiates and organizes the giveaway and the selection of winners. Winners are selected completely randomly among followers in the system, no human intervention takes place. After the draw, the operator of the application will contact the winners.")
                    
                    Text("3. Renunciation of the Prize Winners can withdraw their prize at any time. The possibility of withdrawal can be simply indicated to the operator of the application.")
                    
                    Text("4. Badges and Virtual Awards Additional badges can be obtained in the application, which are virtual awards. These awards do not carry physical or digital prizes. Badges are distributed automatically and everyone who is entitled to them receives them.")
                    
                    Text(" 5. Liability Apple is not involved in any way in the sweepstakes or in-app games. The prize draw takes place solely under the organization and responsibility of the Zsozeatya application. This regulation applies to all prize games and badges organized in the Zsozeatya application. By using and participating in this app, you agree to these terms and conditions.")
                }
                .fontWeight(.bold)
                .padding()
            }
            .padding(.top, 30)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    PrizeDawView().preferredColorScheme(.dark)
}
