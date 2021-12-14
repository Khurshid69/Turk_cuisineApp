//
//  datas.swift
//  Turk_cuisineApp
//
//  Created by user on 13/12/21.
//

import Foundation

struct FoodDatas: Codable {
    var name: String?
    var url: String?
    var ingredients: [Ingredients]?
    var steps: [Steps]?
    var desc: String?
    var img: String?
    var img_url: String?
}

struct Ingredients: Codable{
    var name: String?
}
struct Steps: Codable{
    var name: String?
    var image: String?
}
