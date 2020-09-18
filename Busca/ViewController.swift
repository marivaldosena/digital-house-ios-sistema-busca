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
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let termoBusca = searchBar.text {
            resultadoLabel.text = itensRepositorio.getBuscar(termo: termoBusca)
        }
    }
}
