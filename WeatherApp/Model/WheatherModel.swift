//
//  WheatherModel.swift
//  WeatherApp
//
//  Created by Madhuri Yerudkar on 05/09/20.
//  Copyright © 2020 loylty. All rights reserved.
//

import Foundation

struct WheatherModel : Decodable {
    let coord : Coord?
    let weather : [Weather]?
    let base : String?
    let main : Main?
    let visibility : Int?
    let wind : Wind?
    let clouds : Clouds?
    let dt : Int?
    let sys : Sys?
    let timezone : Int?
    let id : Int?
    let name : String?
    let cod : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case coord = "coord"
        case weather = "weather"
        case base = "base"
        case main = "main"
        case visibility = "visibility"
        case wind = "wind"
        case clouds = "clouds"
        case dt = "dt"
        case sys = "sys"
        case timezone = "timezone"
        case id = "id"
        case name = "name"
        case cod = "cod"
    }
}

struct Wind : Decodable {
    let speed : Double?
    let deg : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case speed = "speed"
        case deg = "deg"
    }
}

struct Main : Decodable {
    let temp : Double?
    let feels_like : Double?
    let temp_min : Double?
    let temp_max : Double?
    let pressure : Int?
    let humidity : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case temp = "temp"
        case feels_like = "feels_like"
        case temp_min = "temp_min"
        case temp_max = "temp_max"
        case pressure = "pressure"
        case humidity = "humidity"
    }
}


struct Weather : Decodable {
    let id : Int?
    let main : String?
    let description : String?
    let icon : String?
    
    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        case main = "main"
        case description = "description"
        case icon = "icon"
    }
}

struct Coord : Decodable {
    let lon : Double?
    let lat : Double?
    
    enum CodingKeys: String, CodingKey {
        
        case lon = "lon"
        case lat = "lat"
    }
}

struct Sys : Decodable {
    let type : Int?
    let id : Int?
    let country : String?
    let sunrise : Int?
    let sunset : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        case id = "id"
        case country = "country"
        case sunrise = "sunrise"
        case sunset = "sunset"
    }
}

struct Clouds : Decodable {
    let all : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case all = "all"
    }
}
