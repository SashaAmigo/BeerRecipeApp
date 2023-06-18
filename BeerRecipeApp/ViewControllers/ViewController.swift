//
//  ViewController.swift
//  BeerRecipeApp
//
//  Created by Саша Amigo on 16.06.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    private var punkAPI : URL {
        return URL(string: "https://api.punkapi.com/v2/beers/random")!
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPunkAPI()
    }
    
    private func fetchPunkAPI() {
        URLSession.shared.dataTask(with: punkAPI) { data, response, error in
            guard let data, let response else {
                print(error?.localizedDescription ?? "No data error")
                return
            }
            print(response)
            print(data)
            
            do {
                let decoder = JSONDecoder()
                let punkAPI = try decoder.decode(Array<Recipe>.self, from: data)
                print(punkAPI)
            } catch {
                print(error)
            }
        }.resume()
    }
    
}

