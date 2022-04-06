//
//  ContentView.swift
//  SwiftUI-StateBinding-Intro-Afternoon
//
//  Created by Gerson Janhuel on 06/04/22.
//

import SwiftUI

// Superview
struct ContentView: View {
    
    @State private var greeting: String = "Hello World 👋🏼"
    
    var body: some View {
        VStack {
            
            Text(greeting)
                .font(.title)
                .padding(.bottom)
            
            ButtonSubview(passedGreeting: $greeting)
        }
    }
}

// Subview
struct ButtonSubview: View {
    
    @Binding var passedGreeting: String
    
    var body: some View {
        Button("Say in Japanese") {
            // action button logic here...
            passedGreeting = "こんにちは世界 👋🏼"
        }
        .padding(.all)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

