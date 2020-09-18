//
//  Cachorro.swift
//  Busca
//
//  Created by Marivaldo Sena on 18/09/20.
//  Copyright © 2020 Marivaldo Sena. All rights reserved.
//

import Foundation

class Cachorro {
    var nome: String
    var raca: String
    
    init(nome: String, raca: String)  {
        self.nome = nome
        self.raca = raca
    }
}

extension Cachorro: Pesquisavel {
    func getDescricao() -> String {
        return "<Cachorro: \(self.nome), Raça: \(self.raca)>"
    }
    
    func getBusca(termo: String) -> Bool {
        let resultado = self.nome.lowercased().contains(termo.lowercased()) || self.raca.lowercased().contains(termo.lowercased())
        
        return resultado
    }
}
