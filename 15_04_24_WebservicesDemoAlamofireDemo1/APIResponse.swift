//
//  APIResponse.swift
//  15_04_24_WebservicesDemoAlamofireDemo1
//
//  Created by Vishal Jagtap on 30/05/24.
//

import Foundation
struct APIResponse : Decodable{
    var recipes : [Recipe]
    var total : Int
    var skip : Int
    var limit : Int
}

struct Recipe : Decodable{
    var id : Int
    var name : String
    var ingredients : [String]
    var instructions : [String]
    var prepTimeMinutes : Int
    var cookTimeMinutes : Int
    var servings : Int
    var difficulty : String
    var cuisine : String
    var caloriesPerServing : Int
    var tags : [String]
    var userId : Int
    var image : String
    var rating : Double
    var reviewCount : Int
    var mealType : [String]
}
