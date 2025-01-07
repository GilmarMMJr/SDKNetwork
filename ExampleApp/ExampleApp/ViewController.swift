//
//  ViewController.swift
//  ExampleApp
//
//  Created by Gilmar Manoel de Mendonça Junior on 01/11/24.
//

import UIKit
import SDKNetwork

class ViewController: UIViewController {
    
    var provider: NetworkProviderProtocol = NetworkProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchExampleData()
    }

    func fetchExampleData() {
        let url = "https://rickandmortyapi.com/api/character"
        let headers = ["Content-Type": "application/json"]
        let body: Data? = nil
        let queryParams = [String: String]()
        let method = "GET"
        
        provider.request(url: url,
                         headers: headers,
                         body: body,
                         queryParams: queryParams,
                         method: method) { (result: Result<CharacterResponse, Error>) in
            
            switch result {
            case .success(let success):
                print("\(success)")
            case .failure(let failure):
                print("\(failure)")
            }
        }
        
    }

}

