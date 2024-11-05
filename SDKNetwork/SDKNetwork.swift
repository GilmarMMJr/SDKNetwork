//
//  SDKNetwork.swift
//  SDKNetwork
//
//  Created by Gilmar Manoel de Mendonça Junior on 04/11/24.
//

import Foundation

public class SDKNetwork {
    public init() {}
    
    public func fetchCharacters(from urlString: String, completion: @escaping (Result<CharacterResponse, Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(NetworkError.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let response = try decoder.decode(CharacterResponse.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}

public enum NetworkError: Error {
    case invalidURL
    case noData
}
