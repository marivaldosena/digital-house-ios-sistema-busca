//
//  PessoaJuridica.swift
//  Busca
//
//  Created by Marivaldo Sena on 18/09/20.
//  Copyright © 2020 Marivaldo Sena. All rights reserved.
//

import Foundation

class PessoaJuridica: Pessoa {
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        self.cnpj = cnpj
        
        super.init(nome: nome)
    }
}

extension PessoaJuridica: Pesquisavel {
    func getDescricao() -> String {
        return "<PessoaJuridica: \(self.nome), CNPJ: \(self.cnpj)>"
    }
    
    func getBusca(termo: String) -> Bool {
        let resultado = self.nome.lowercased().contains(termo.lowercased()) || self.cnpj.lowercased().contains(termo.lowercased())
        
        return resultado
    }
}
