//
//  Art.swift
//  cosas
//
//  Created by Ximena Puig on 11/4/23.
//

import Foundation
import ParseSwift

// Art Parse Object model
// https://github.com/parse-community/Parse-Swift/blob/3d4bb13acd7496a49b259e541928ad493219d363/ParseSwift.playground/Pages/1%20-%20Your%20first%20Object.xcplaygroundpage/Contents.swift#L33

struct Art: ParseObject {
    // These are required by ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    // Your own custom properties.
    var title: String?
    var highestBid: Int? //Every time someone places a bid it compares it with this int. if newbid>highesBid adjust var
    var caption: String?
    var imageFile: URL?
}
