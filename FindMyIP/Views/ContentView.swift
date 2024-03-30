//
//  ContentView.swift
//  FindMyIP
//
//  Created by PINNINTI DHANANJAYARAO on 29/03/24.
//

import SwiftUI

struct ContentView: View {
 @ObservedObject var viewModel: IpServiceViewModel
    var body: some View {
        NavigationStack {
            
            VStack {
            // Show loading indicator while data is being parsed
                if viewModel.ips == nil && viewModel.showError {
                    Text(viewModel.errorMessage)

          
                } else if (viewModel.ips == nil && viewModel.showError == false) {
                    
                    ProgressView()
                    
                } else {
                ScrollView {
                    Text("IP Country id: \(viewModel.ips!.region)")
                    Text("Ip Country: \(viewModel.ips!.regionCode)")
                    Text("IP Country id: \(viewModel.ips!.region)")
                    Text("Ip Country: \(viewModel.ips!.regionCode)")
                    Text("IP Country id: \(viewModel.ips!.region)")
                    Text("Ip Country: \(viewModel.ips!.regionCode)")
                    Text("IP Country id: \(viewModel.ips!.region)")
                    Text("Ip Country: \(viewModel.ips!.regionCode)")
                    Text("IP Country id: \(viewModel.ips!.region)")
                    Text("Ip Country: \(viewModel.ips!.regionCode)")
                    Text("IP Country id: \(viewModel.ips!.region)")
                    Text("Ip Country: \(viewModel.ips!.regionCode)")
                    Text("IP Country id: \(viewModel.ips!.region)")
                    Text("Ip Country: \(viewModel.ips!.regionCode)")
                    Text("IP Country id: \(viewModel.ips!.region)")
                    Text("Ip Country: \(viewModel.ips!.regionCode)")
                    Text("IP Country id: \(viewModel.ips!.region)")
                    Text("Ip Country: \(viewModel.ips!.regionCode)")
                }
                .padding(.top,20)
                .navigationTitle("Ip Details")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarColorScheme(.dark, for: .navigationBar)
                .toolbarBackground(AppColor.primary, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                
            }
          }
        }
     
    }
}

#Preview {
    ContentView(viewModel: IpServiceViewModel(networkManager: NetworkManager()))
}
