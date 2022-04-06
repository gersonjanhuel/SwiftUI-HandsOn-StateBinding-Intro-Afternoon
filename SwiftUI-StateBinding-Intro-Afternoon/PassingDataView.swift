//
//  PassingDataView.swift
//  SwiftUI-StateBinding-Intro-Afternoon
//
//  Created by Gerson Janhuel on 06/04/22.
//

import SwiftUI

// 2. Passing data, yang kita monitor perubahannya

struct PassingDataView: View {
    
    @State private var fullNames: [String] = ["Gerson Janhuel Huky", "Gusmang"]
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                List($fullNames, id: \.self) { $name in
                    
                    NavigationLink(destination: DetailView(passedData: $name)) {
                        Text(name)
                            .font(.title)
                            .padding(.bottom)
                    }
                    
                }
                
            }
        }
    }
}


struct DetailView: View {
    
    @Binding var passedData: String
    
    var body: some View {
        
        TextField("Full name", text: $passedData)
            .multilineTextAlignment(.center)
            .font(.title)
    }
}

struct PassingDataView_Previews: PreviewProvider {
    static var previews: some View {
        PassingDataView()
    }
}
