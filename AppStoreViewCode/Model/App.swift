//
//  App.swift
//  AppStoreViewCode
//
//  Created by Sergio Cardoso on 08/03/22.
//

import UIKit


struct App: Codable {
    
    let id: Int
    let nome: String
    let empresa: String
    let avaliacao: String?
    let iconeUrl: String
    let screensShotURls: [String]?
    
}
