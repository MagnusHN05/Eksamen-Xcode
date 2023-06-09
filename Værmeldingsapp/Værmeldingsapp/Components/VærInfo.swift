//
//  VærInfo.swift
//  Værmeldingsapp
//
//  Created by Magnus Holth Nysveen on 09/06/2023.
//

import SwiftUI

struct VærInfo: View {
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: logo)
                .font(.title2)
                .frame(width: 20, height: 20)
                .padding()
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
                .cornerRadius(50)

            
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.caption)
                
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
    }
}

struct VærInfo_Previews: PreviewProvider {
    static var previews: some View {
        VærInfo(logo: "thermometer", name: "Feels like", value: "8°")
    }
}
