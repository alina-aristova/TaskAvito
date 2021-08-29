//
//  MainScreenInteractor.swift
//  taskAvito
//
//  Created by Алина Аристова on 25.08.2021.
//

import Foundation
import UIKit

class MainScreenInteractor {
    
    var company = [Employee]()
}
extension MainScreenInteractor: MainScreenInteractorInput {
    func parseJson() {
        let urlString = "https://run.mocky.io/v3/1d1cb4ec-73db-4762-8c4b-0b8aa3cecd4c"
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
            }
        }
    }
    
    func parse(json: Data) {
        
        let decoder = JSONDecoder()
        
        if let jsonServerQuestion = try? decoder.decode(Company.self, from: json) {
            company = jsonServerQuestion.employees
            print(company)
        }
        
    }
}

