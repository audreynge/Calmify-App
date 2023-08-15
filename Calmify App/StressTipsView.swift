//
//  StressTipsView.swift
//  Calmify App
//
//  Created by Audrey Ng on 8/15/23.
//

import SwiftUI

struct StressTipsView: View {
    var body: some View {
        ZStack {
            
            Image("bluebg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .clipped()
            .edgesIgnoringSafeArea(.all)
            
            Image("Stress Management Tips")
                .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.19)
            
            
            Image("1-5 Scale Question")
                .position(x : 190, y : 350)
        }
        VStack {
            Button("Tired") {
                
            }

        }
    }
}

struct StressTipsView_Previews: PreviewProvider {
    static var previews: some View {
        StressTipsView()
    }
}
