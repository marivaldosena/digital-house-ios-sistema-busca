//
//  Aviao.swift
//  Busca
//
//  Created by Marivaldo Sena on 18/09/20.
//  Copyright © 2020 Marivaldo Sena. All rights reserved.
//

import Foundation

class Aviao {
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
    }
}

extension Aviao: Pesquisavel {
    func getBusca(termo: String) -> Bool {
        let resultado = self.modelo.lowercased().contains(termo.lowercased()) || self.cidade.lowercased().contains(termo.lowercased())
        
        return resultado
    }
    
    func getDescricao() -> String {
        return "<Avião: \(self.modelo), Cidade: \(self.cidade)>"
    }
}
