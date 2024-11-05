//
//  PageInfo.swift
//  SDKNetwork
//
//  Created by Gilmar Manoel de Mendonça Junior on 04/11/24.
//

import Foundation

public struct PageInfo: Codable {
    public let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
