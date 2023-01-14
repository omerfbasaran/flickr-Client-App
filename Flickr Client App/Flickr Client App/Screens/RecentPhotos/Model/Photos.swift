//
//  Photos.swift
//  Flickr Client App
//
//  Created by Ömer Faruk Başaran on 8.01.2023.
//

import Foundation

struct Photos : Codable {
   let page : Int?
   let pages : Int?
   let perpage : Int?
   let total :Int?
    let photo : [Photo]?
}
