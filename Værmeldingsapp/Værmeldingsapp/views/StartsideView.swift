//
//  StartsideView.swift
//  Værmeldingsapp
//
//  Created by Magnus Holth Nysveen on 07/06/2023.
//

import SwiftUI
import CoreLocationUI

struct StartsideView: View {
    @EnvironmentObject var locationManager : LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing: 25){
                
                Text("Værmelding-App")
                    .bold()
                    .font(.title)
                
                Text("Appen trenger tillatese for å bruke din GPS-posisjon ")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct StartsideView_Previews: PreviewProvider {
    static var previews: some View {
        StartsideView()
    }
}
