//
//  File.swift
//  LearnbyDoing
//
//  Created by Orlando Moraes Martins on 26/02/23.
//

import SwiftUI

//MARK: - Card Model

struct Card: Identifiable {
    var id =  UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
    
}
