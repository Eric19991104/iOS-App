//
//  CircleImage.swift
//  Landmarks
//
//  Created by user on 2020/11/30.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white , linewidth : 4))
            .shadow(radius : 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image : Image("turtlerock"))
    }
}
