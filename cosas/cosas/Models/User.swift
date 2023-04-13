//
//  User.swift
//  cosas
//
//  Created by Ximena Puig on 11/4/23.
//

import Foundation
import ParseSwift

// Parse User model
// https://github.com/parse-community/Parse-Swift/blob/3d4bb13acd7496a49b259e541928ad493219d363/ParseSwift.playground/Pages/3%20-%20User%20-%20Sign%20Up.xcplaygroundpage/Contents.swift#L16

struct User: ParseUser {
    // These are required by `ParseObject`.
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?
    var lastPostedDate: Date?

    // These are required by `ParseUser`.
    var username: String?
    var email: String?
    var emailVerified: Bool?
    var password: String?
    var authData: [String: [String: String]?]?

    // Your custom properties.

    // TODO: Pt 2 - Add custom property for `lastPostedDate`
    var name: String?
    var profilepic: ParseFile?
    var favs: Array<Art>?
}
