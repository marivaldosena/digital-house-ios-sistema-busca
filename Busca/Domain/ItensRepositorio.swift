//
//  ItensRepositorio.swift
//  Busca
//
//  Created by Marivaldo Sena on 18/09/20.
//  Copyright © 2020 Marivaldo Sena. All rights reserved.
//

import Foundation

class ItensRepositorio {
    var itens = [Pesquisavel]()
    
    func getBuscar(termo: String) -> [Pesquisavel] {
        
        let resultado: [Pesquisavel] = itens.filter { (item) -> Bool in
            return item.getBusca(termo: termo)
        }
        
        
        return resultado
    }
    
    
    func getBuscar(termo: String) -> String {
        var resultado = ""
        let itensEncontrados: [Pesquisavel] = self.getBuscar(termo: termo)
        
        for item in itensEncontrados {
            resultado += "\(item.getDescricao())\n"
        }
        
        return resultado
    }
    
    func incluir(item: Pesquisavel) {
        self.itens.append(item)
    }
}
