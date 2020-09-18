//
//  Pesquisavel.swift
//  Busca
//
//  Created by Marivaldo Sena on 18/09/20.
//  Copyright © 2020 Marivaldo Sena. All rights reserved.
//

import Foundation

protocol Pesquisavel: Nomeavel {
    func getBusca(termo: String) -> Bool
}
