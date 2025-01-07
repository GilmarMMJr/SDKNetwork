//
//  CharacterResponse.swift
//  SDKNetwork
//
//  Created by Gilmar Manoel de Mendonça Junior on 04/11/24.
//

import Foundation

public struct CharacterResponse: Codable {
    public let info: PageInfo
    public let results: [Character]
}
