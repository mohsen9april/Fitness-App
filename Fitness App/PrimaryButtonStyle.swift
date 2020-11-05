//
//  PrimaryButtonStyle.swift
//  Fitness App
//
//  Created by Mohsen Abdollahi on 10/31/20.
//

import SwiftUI

struct MyStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .imageScale(.small)
            .foregroundColor(.white)
            .font(.headline)
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 62)
            .background(Color.darkPrimaryButton)
            .cornerRadius(10)
            .shadow(radius: 2)
        
        
        
        

            
        
        
    }
}

