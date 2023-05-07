/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual landmark.
*/

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable ,Identifiable{
    var id: Int? = nil
    var current_servers: String
    var name: String
    var url: String
    fileprivate var imageName: String
    var introduction: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case id
        case current_servers
        case name
        case url
        case imageName
        case introduction
    }
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
