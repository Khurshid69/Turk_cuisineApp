//
//  DataLoader.swift
//  Turk_cuisineApp
//
//  Created by user on 13/12/21.
//

import Foundation

public class DataLoader {
    @Published var foodDatas = [FoodDatas]()
    
    func load(){
        if let fileLocation = Bundle.main.url(forResource: "turk_cuisine", withExtension: "json"){
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson  = try jsonDecoder.decode([FoodDatas].self, from: data)
                self.foodDatas = dataFromJson
                print(dataFromJson)
            } catch {
                print(error)
            }
        }
    }
}
