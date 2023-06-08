//
//  ContentView.swift
//  Værmeldingsapp
//
//  Created by Magnus Holth Nysveen on 07/06/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View{
        VStack {
            
            if let location = locationManager.location {
                Text("Dine Kordinater er: \(location.latitude), \(location.longitude)")
            }
            else{
                if locationManager.isLoading{
                    LoadingView()
                }
                else{
                    StartsideView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(.blue)
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
