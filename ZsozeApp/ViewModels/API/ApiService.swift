//
//  ApiService.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 09/03/2024.
//

import Foundation
import Combine
import Moya
import CombineMoya


class ApiService: ObservableObject {
    
    var cancellable = Set<AnyCancellable>()
    @Published var isLoading = false
    @Published var hasError = false
    @Published var error: ErrorCases?
    
    @Published var zsozeMainChannel: [Item] = []
    @Published var vodChannel: [Item] = []
    @Published var artChannel: [Item] = []
    @Published var shortChannel: [Item] = []
    @Published var zsunBoxingChannel: [Item] = []
    
    
   
    
    let provider = MoyaProvider<ApiServiceTargetType>()
    
    init() {
//        getZsozeChannel()
//        getVodChannel()
//        getShortChannel()
//        getArtChannel()
//        getZsunBoxingChannel()
    }
    
    func getZsozeChannel() {
        isLoading = true
        provider.requestPublisher(.zsoze(apiKey: apiKey, channelId: mainChannelId))
            .tryMap { response in
                guard let httpResponse = response.response else {
                    throw ErrorCases.invalidStatusCode
                }
                
                guard (200...299).contains(httpResponse.statusCode) else {
                    throw ErrorCases.invalidStatusCode
                }
                return response
            }
            .sink { [weak self] comp in
                self?.handleCompletion(comp)
                
            } receiveValue: { [weak self] response in
                guard let weakSelf = self else { return }
                weakSelf.handleResponse(response, targetChannel: &weakSelf.zsozeMainChannel)
            }
            .store(in: &cancellable)
        
    }
    
    func getVodChannel() {
        isLoading = true
        provider.requestPublisher(.vod(apiKey: apiKey, channelId: vodChannelId))
            .tryMap { response in
                guard let httpResponse = response.response else {
                    throw ErrorCases.invalidStatusCode
                }
                
                guard (200...299).contains(httpResponse.statusCode) else {
                    throw ErrorCases.invalidStatusCode
                }
                return response
            }
            .sink { [weak self] comp in
                self?.handleCompletion(comp)
            } receiveValue: { [weak self] response in
                guard let weakSelf = self else { return }
                weakSelf.handleResponse(response, targetChannel: &weakSelf.vodChannel)
            }
            .store(in: &cancellable)
    }
    
    
    func getShortChannel() {
        isLoading = true
        provider.requestPublisher(.shorts(apiKey: apiKey, channelId: shortsChannelId))
            .tryMap { response in
                guard let httpResponse = response.response else {
                    throw ErrorCases.invalidStatusCode
                }
                
                guard (200...299).contains(httpResponse.statusCode) else {
                    throw ErrorCases.invalidStatusCode
                }
                return response
            }
            .sink { [weak self] comp in
                self?.handleCompletion(comp)
            } receiveValue: { [weak self] response in
                guard let weakSelf = self else { return }
                self?.handleResponse(response, targetChannel: &weakSelf.shortChannel)
            }
            .store(in: &cancellable)
    }
    
    func getArtChannel() {
        isLoading = true
        provider.requestPublisher(.arts(apiKey: apiKey, channelId: artChannelId))
            .tryMap { response in
                guard let httpResponse = response.response else {
                    throw ErrorCases.invalidStatusCode
                }
                guard (200...299).contains(httpResponse.statusCode) else {
                    throw ErrorCases.invalidStatusCode
                }
                return response
            }
            .sink { [weak self] comp in
                self?.handleCompletion(comp)
            } receiveValue: { [weak self] response in
                guard let weakSelf = self else { return }
                self?.handleResponse(response, targetChannel: &weakSelf.artChannel)
            }
            .store(in: &cancellable)
    }
    
    
    func getZsunBoxingChannel() {
        isLoading = true
        provider.requestPublisher(.zsunboxing(apiKey: apiKey, channelId: zsunboxingChannelId))
            .tryMap { response in
                guard let httpResponse = response.response else {
                    throw ErrorCases.invalidStatusCode
                }
                
                guard (200...299).contains(httpResponse.statusCode) else {
                    throw ErrorCases.invalidStatusCode
                }
                return response
            }
            .sink { [weak self] comp in
                self?.handleCompletion(comp)
            } receiveValue: { [weak self] response in
                guard let weakSelf = self else { return }
                self?.handleResponse(response, targetChannel: &weakSelf.zsunBoxingChannel)
            }
            .store(in: &cancellable)
    }
    
}

extension ApiService {
    
    enum ErrorCases: LocalizedError{
        case decodingError
        case invalidStatusCode
        case custom(Error)
        
        var description: String {
            switch self {
            case .decodingError:
                return "Failed to decoding data"
            case .invalidStatusCode:
                return "Invalid statusCode"
            case .custom(let error):
                return error.localizedDescription
            }
        }
    }
    
    private func handleFailure(_ error: Error) {
        isLoading = false
        hasError = true
        self.error = ErrorCases.custom(error)
    }
    
    private func handleCompletion(_ completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            print("RECEIVE VALUE COMPLETED")
        case .failure(let error):
            print("RECEIVE VALUE FAILED")
            handleFailure(error)
        }
    }
    
    private func handleResponse(_ response: Response, targetChannel: inout [Item]) {
        guard let data = try? JSONDecoder().decode(ZsozeatyaResponse.self, from: response.data) else {
            handleFailure(ErrorCases.decodingError)
            return
        }
        
        targetChannel = data.items
        
        isLoading = false
        hasError = false
    }
}


