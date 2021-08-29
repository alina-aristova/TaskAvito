//
//  ServerModel.swift
//  taskAvito
//
//  Created by Алина Аристова on 27.08.2021.
//

import Foundation

 //MARK: - ServerQuestion
struct ServerQuestion: Codable {
    let company: Company
}

// MARK: - Company
struct Company: Codable {
    let name: String
    let employees: [Employee]
}

// MARK: - Employee
struct Employee: Codable {
    let name, phoneNumber: String
    let skills: [String]

    enum CodingKeys: String, CodingKey {
        case name
        case phoneNumber
        case skills
    }
}
