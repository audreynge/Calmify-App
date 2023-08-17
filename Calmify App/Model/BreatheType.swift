//
//  BreatheType.swift
//  Calmify App
//
//  Created by Audrey Ng on 8/17/23.
//

import SwiftUI

//Mark: Type Model and Sample Types
struct BreatheType: Identifiable,Hashable{
    var id: String = UUID().uuidString
    var title: String
    var color: Color
}

let sampleTypes: [BreatheType] = [
    .init(title: "Tired", color: Color("lightpurple")),
    .init(title: "Tense", color: Color("tensecolor")),
    .init(title: "Overwhelmed", color: .mint)
]
