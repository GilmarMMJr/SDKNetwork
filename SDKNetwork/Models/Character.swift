//
//  Character.swift
//  SDKNetwork
//
//  Created by Gilmar Manoel de Mendonça Junior on 04/11/24.
//

import Foundation

public struct Character: Codable {
    let id: Int
    public let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
