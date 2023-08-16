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
            VStack {
                Text("To know why mental health is important  first we need to know what mental health is. Mental health is the state of your psychological and emotional well being, some of its problems are panic attacks, eating disorders, depression, etc. Mental health is crucial nowadays, especially for teenagers, it can impact our thoughts, actions and behavior. Being healthy emotionally can make you work productively, create good relationships and be physically healthy.")
                    .font(.title2)
                    .foregroundColor(Color("lightblue"))
                    .frame(width: 330,height:800)
            }
        }
    }
}

struct MentalHealthInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MentalHealthInfoView()
    }
}
