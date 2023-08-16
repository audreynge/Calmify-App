//
//  MentalHealthInfoView.swift
//  Calmify App
//
//  Created by Audrey Ng on 8/15/23.
//

import SwiftUI

struct MentalHealthInfoView: View {
    var body: some View {
        ZStack{
            Image("bluebg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .clipped()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MentalHealthInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MentalHealthInfoView()
    }
}
