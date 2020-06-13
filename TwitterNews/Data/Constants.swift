//
//  Constants.swift
//  TwitterNews
//
//  Created by Marcy Vernon on 6/1/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.
//

import Foundation

struct K {
    // NOTE: Twitter's website displays a logo with a white background which is not responsive to dark mode.
    static let company: (image: String, website: String) = ("Twitter", "https://twitter.com/twitternews?lang=en")
    
    static let error: [String] = [
        "🛑 ERROR: Missing image. Make sure image is available and spelled correctly in the code.",
        "🛑 ERROR: Invalid URL. \(K.company.website)",
    ]
    
    
}
