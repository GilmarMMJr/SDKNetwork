//
//  ViewController.swift
//  ExampleApp
//
//  Created by Gilmar Manoel de Mendonça Junior on 01/11/24.
//

import UIKit
import SDKNetwork

class ViewController: UIViewController {
    
    let sdkNetwork = SDKNetwork()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchExampleData()
    }

    func fetchExampleData() {
        let url = "https://rickandmortyapi.com/api/character"
        
        sdkNetwork.fetchCharacters(from: url) { result in
            switch result {
            case .success(let characterResponse):
                print("Número de personagens: \(characterResponse.info.count)")
                print("Primeiro personagem: \(characterResponse.results.first?.name ?? "Nenhum personagem")")
            case .failure(let error):
                print("Erro ao buscar personagens: \(error)")
            }
        }
    }

}

