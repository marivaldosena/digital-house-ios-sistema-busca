//
//  PessoaFisica.swift
//  Busca
//
//  Created by Marivaldo Sena on 18/09/20.
//  Copyright © 2020 Marivaldo Sena. All rights reserved.
//

import Foundation

class PessoaFisica: Pessoa {
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        
        super.init(nome: nome)
    }
}

extension PessoaFisica: Pesquisavel {
    func getDescricao() -> String {
        return "<PessoaFisica: \(self.nome), CPF: \(self.cpf)>"
    }
    
    func getBusca(termo: String) -> Bool {
        let resultado = self.nome.lowercased().contains(termo.lowercased()) || self.cpf.lowercased().contains(termo.lowercased())
        
        return resultado
    }
}
