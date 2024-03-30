//
//  FindMyIPApp.swift
//  FindMyIP
//
//  Created by PINNINTI DHANANJAYARAO on 29/03/24.
//

import SwiftUI

@main
struct FindMyIPApp: App {
    
    @StateObject  var viewModel = IpServiceViewModel(networkManager: NetworkManager())
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
                .environmentObject(viewModel)
                .onAppear {
                
                    viewModel.fetchIps()
                }

        }
    }
}
