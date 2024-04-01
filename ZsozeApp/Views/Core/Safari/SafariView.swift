//
//  SafariView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI
import Shimmer

struct SafariView: View {
    @State private var hideTheContent = false
    @StateObject var viewModel = ApiService()
    @EnvironmentObject var channelSelection: ChannelSelection
    
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                Color.background.ignoresSafeArea()
                
                VStack(spacing: 0){
                    HStack{
                        Text("Újdonságok")
                            .font(.title)
                            .fontWeight(.heavy)
                        Spacer()
                        
                        NavigationLink {
                            NotificationsView()
                        } label: {
                            Image(systemName: "bell.circle.fill")
                        }
                        .font(.system(size: 25))
                        .foregroundStyle(.black, .white)
                        
                    }
                    .padding(.horizontal)
                    
                    TopScrollView(selectedChannel: $channelSelection.selectedChannels)
                        .padding(.all)
                    
                    ContentUnavailableView.search
                        .opacity(viewModel.hasError ? 1 : 0)
                    
                }
                
                ScrollView(.vertical, showsIndicators: false){
                    ProgressView()
                        .opacity(viewModel.isLoading ? 1 : 0)
                    
                    ForEach(filteredPosts(), id: \.snippet.title){ post in
                        SafariCellView(post: post)
                        
                    }
                }
                .padding(.top, 130)
                .alert(isPresented: $viewModel.hasError, content: {
                    Alert(title: Text("Error!"), message: Text(viewModel.error?.description ?? "Unknown error!"), primaryButton: .default(Text("Retry"), action: {
                        viewModel.getZsozeChannel()
                    }), secondaryButton: .cancel())
                })
            }
        }
        .onAppear{
            Task{
                // try await Task.sleep(nanoseconds: 3_000_000_000)
                viewModel.getZsozeChannel()
                viewModel.getVodChannel()
                viewModel.getShortChannel()
                viewModel.getArtChannel()
                 viewModel.getZsunBoxingChannel()
            }
        }
    }
    
    func filteredPosts() -> [Item] {
        var filteredPosts: [Item] = []
        
        if channelSelection.selectedChannels.isEmpty || channelSelection.selectedChannels.contains(.instagram) || channelSelection.selectedChannels.contains(.zsozeatya) {
            filteredPosts.append(contentsOf: viewModel.zsozeMainChannel)
        }
        if channelSelection.selectedChannels.contains(.vod) {
            filteredPosts.append(contentsOf: viewModel.vodChannel)
        }
        
        if channelSelection.selectedChannels.contains(.shorts) {
            filteredPosts.append(contentsOf: viewModel.shortChannel)
        }
        
        if channelSelection.selectedChannels.contains(.art) {
            filteredPosts.append(contentsOf: viewModel.artChannel)
        }
        
        if channelSelection.selectedChannels.contains(.unboxing) {
            filteredPosts.append(contentsOf: viewModel.zsunBoxingChannel)
        }
        
        return filteredPosts
    }
}


#Preview {
    SafariView()
        .environmentObject(ChannelSelection())
        .preferredColorScheme(.dark)
}
