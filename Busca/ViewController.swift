//
//  ViewController.swift
//  Busca
//
//  Created by Marivaldo Sena on 18/09/20.
//  Copyright © 2020 Marivaldo Sena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var itensRepositorio = ItensRepositorio()

    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var buscaSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buscaSearchBar.delegate = self
        
        let cachorro = Cachorro(nome: "Totó", raca: "vira lata")
        let joao = PessoaFisica(nome: "João", cpf: "1234")
        let maria = PessoaFisica(nome: "Maria", cpf: "4321")
        let empresa = PessoaJuridica(nome: "Digital House", cnpj: "333333")
        
        itensRepositorio.incluir(item: cachorro)
        itensRepositorio.incluir(item: joao)
        itensRepositorio.incluir(item: maria)
        itensRepositorio.incluir(item: empresa)
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let termo = searchBar.text {
            resultadoLabel.text = self.getBuscar(termo: termo)
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        resultadoLabel.text = self.getBuscar(termo: searchText)
    }
    
    private func getBuscar(termo: String) -> String {
        return itensRepositorio.getBuscar(termo: termo)
    }
}
