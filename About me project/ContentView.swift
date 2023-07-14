//
//  ContentView.swift
//  About me project
//
//  Created by Yoselin Castillo on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var facts = ""
    @State private var youngerPic = false
   
    
    var body: some View {
        ZStack(){
            Color(hue: 224, saturation: 0.39, brightness: 0.58)
            //Color(.systemGray4)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing : 70){
                Text("★Hello My name is Yoselin★")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.173, green: 0.0, blue: 0.0))
                
                Button("Reveal One fact"){
                    facts = "I have 5 younger sisters"
                    self.youngerPic = true
                   
                    }
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                Image("Yose")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 400.0)
                
            }
            .padding()
            .background(Rectangle().foregroundColor(.white))
            .padding()
            .cornerRadius(15)
            .shadow(radius : 15)
            Text(facts)
                .font(.title3)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.173, green: 0.0, blue: 0.0))
                .padding(.bottom, 450.0)
                
            if youngerPic{
                    Image("youngMe")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 218.0)
                        .padding(.top, 156.0)
                
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
