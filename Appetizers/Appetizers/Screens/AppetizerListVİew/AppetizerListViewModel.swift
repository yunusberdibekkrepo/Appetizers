//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import Foundation

class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var isLoading: Bool = false
    @Published var alertItem: AlertItem?

    @Published var selectedAppetizer: Appetizer?
    @Published var isShowingDetail = false

    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                self.isLoading = false

                switch result {
                case .success(let success):
                    self.appetizers = success

                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL

                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete

                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse

                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    }
                }
            }
        }
    }


}

/*

 */
