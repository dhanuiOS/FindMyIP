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
                    Text("IP: \(viewModel.ips!.ip)")
                    Text("Network: \(viewModel.ips!.network)")
                    Text("Version: \(viewModel.ips!.version)")
                    Text("City: \(viewModel.ips!.city)")
                    Text("Region: \(viewModel.ips!.region)")
                    Text("Region code: \(viewModel.ips!.regionCode)")
                    Text("Country Name: \(viewModel.ips!.country)")
                    Text("CountryCodeIso: \(viewModel.ips!.countryCodeIso3)")
                    Text("ContinentCode: \(viewModel.ips!.continentCode)")
                    Text("Postal: \(viewModel.ips!.postal)")
                    Text("Latitude: \(viewModel.ips!.latitude)")
                    Text("Longitude: \(viewModel.ips!.longitude)")
                    Text("TimeZone: \(viewModel.ips!.timezone)")
                    Text("Country CallingCode: \(viewModel.ips!.countryCallingCode)")
                    Text("Currency: \(viewModel.ips!.currency)")
                    Text("Currency Name: \(viewModel.ips!.currencyName)")
                    Text("Country Area: \(viewModel.ips!.countryArea)")
                    Text("CountryPopulation: \(viewModel.ips!.countryPopulation)")
                }
                .padding(.top,20)
                .navigationTitle("IP Details")
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
