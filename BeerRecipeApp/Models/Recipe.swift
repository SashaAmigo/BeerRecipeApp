//
//  Recipe.swift
//  BeerRecipeApp
//
//  Created by Саша Amigo on 16.06.2023.
//
import Foundation

struct Recipe: Decodable {
    let id: Int
    let name: String
    let tagline: String
    let first_brewed: String
    let description: String
    let image_url: URL?
    let abv: Double
    let ibu: Double
    let target_fg: Double
    let target_og: Double
    let ebc: Double
    let srm: Double
    let ph: Double
    let attenuation_level: Double
    let volume: Volume
    let boil_volume: Volume
    let method: Method
    let ingredients: Ingredients
    let food_pairing: [String]
    let brewers_tips: String
    let contributed_by: String
    
}

struct Volume: Decodable {
    let value: Int
    let unit: String
}

struct Method: Decodable {
    let mash_temp: [Temp]
    let fermentation: Temp
}

struct Temp: Decodable {
    let value: Double?
    let unit: String?
    let duration: Double?
    
}
struct TempFermentation: Decodable {
    let value: Double
    let unit: String
}

struct Ingredients: Decodable {
    let malt: [Malt]
    let hops: [Hops]
    let yeast: String
}

struct Malt: Decodable {
    let name: String
    let value: Double?
    let unit: String?
}

struct Hops: Decodable {
    let name: String
    let amount: HopsAmount
    let add: String
    let attribute: String
}

struct HopsAmount: Decodable {
    let value: Double
    let unit: String
}
