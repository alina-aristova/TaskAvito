//
//  MainScreenInteractor.swift
//  taskAvito
//
//  Created by Алина Аристова on 25.08.2021.
//

import Foundation
import UIKit

class MainScreenInteractor {
    var networkService: NetworkServiceProtocol!
}
extension MainScreenInteractor: MainScreenInteractorInput {
    
    func obtainEmployees() {
        networkService.obtainParcingResult(type: ServerQuestion.self, string: "https://run.mocky.io/v3/1d1cb4ec-73db-4762-8c4b-0b8aa3cecd4c") { answer in
           // print(answer)
//            print(answer?.company.name)
//            print(answer?.company.employees[1].name)
//            print(answer?.company.employees[1].phoneNumber)
//            print(answer?.company.employees[1].skills)
            //ТУТ ЗАХУЯРЬ ОБРАБОТКУ
        }
    }
}

