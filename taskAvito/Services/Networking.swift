//
//  Networking.swift
//  taskAvito
//
//  Created by Алина Аристова on 30.08.2021.
//

import Foundation

protocol NetworkServiceProtocol {
    func obtainParcingResult<T : Codable>(type: T.Type, string: String, closure: @escaping (T?) -> ())
}

final class NetworkService {
    
    static let shared = NetworkService()
    
    private init() {}
    
    private func parseJson<T: Decodable>(data: Data, type: T.Type) -> T? {
        do {
            return try JSONDecoder().decode(type.self, from: data)
        } catch {
            print("JSON decode error:", error)
            return nil
        }
    }
}

extension NetworkService: NetworkServiceProtocol {
    
    func obtainParcingResult<T : Codable>(type: T.Type, string: String, closure: @escaping (T?) -> ()) {
        guard let url = URL(string: string) else { return }
        let dataTask = URLSession.shared.dataTask(with: URLRequest(url: url)) { [weak self] data, _, _ in
            guard let data = data else { return }
            let result = self?.parseJson(data: data, type: T.self)
            closure(result)
        }
        dataTask.resume()
    }
}

