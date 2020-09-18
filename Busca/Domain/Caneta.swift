//
//  Caneta.swift
//  Busca
//
//  Created by Marivaldo Sena on 18/09/20.
//  Copyright © 2020 Marivaldo Sena. All rights reserved.
//

import Foundation

class Caneta {
    var marca: String
    
    init(marca: String) {
        self.marca = marca
    }
}

extension Caneta: Pesquisavel {
    func getDescricao() -> String {
        return "<Caneta: \(self.marca)>"
    }
    
    func getBusca(termo: String) -> Bool {
        let resultado = self.marca.lowercased().contains(termo.lowercased())
        
        return resultado
    }
}
