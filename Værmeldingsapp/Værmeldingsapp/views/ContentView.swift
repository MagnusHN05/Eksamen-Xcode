//
//  ContentView.swift
//  Værmeldingsapp
//
//  Created by Magnus Holth Nysveen on 07/06/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var værapiManager = VærApiManager()
    @State var weather: ResponseBody?
    
    var body: some View{
        VStack {
            
            if let location = locationManager.location {
                if let weather = weather{
                    if let weather = weather{
                        Text("funker")
                    }
                } else {
                    LoadingView()
                        .task {
                            do {
                                weather = try await værapiManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                            } catch {
                                print("Error getting weather: \(error)")
                            }
                        }
                }
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
