//
//  ContentView.swift
//  Fitness App
//
//  Created by Mohsen Abdollahi on 10/30/20.
//

import SwiftUI

struct LandingView: View {
    
    //MARK:- PROPERTIES
    @State private var isActive = false
    
    var body: some View {
        
        NavigationView {
            GeometryReader { proxy in
                
                VStack{
                    
                    Spacer().frame(height: proxy.size.height * 0.25)
                    
                    Text("Fitness")
                        .font(.system(size: 64, weight : .medium))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: Text("Navigated"), isActive: $isActive) {
                    Button(action: {
                        //Action
                        print("Button Tapped !")
                        self.isActive.toggle()
                    }){ // Label :
                        HStack(spacing: 15){
                            Spacer()
                            Image(systemName: "plus.circle")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                            
                            Text("Create a Challenge")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                        }
                    }.buttonStyle(MyStyle())
                    .padding()
                    .padding(.bottom,50)
                    }//:NavigationLink
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity )
                .background(
                    Image("pullups")
                        .resizable()
                        .aspectRatio(contentMode: .fill)).edgesIgnoringSafeArea(.all)
            }//GeometryReader
        }//NavigationView
        .accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandingView()
        }
    }
}
