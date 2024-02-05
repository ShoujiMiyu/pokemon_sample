//
//  ViewController.swift
//  pokemon_sample
//
//  Created by 荘司実祐 on 2024/02/02.
//

import UIKit

struct Pokemon: Decodable {
    let name: String
    let id: String
    let sprites: Images
}

struct Images: Codable {
    let frontImage: String
    let shinyImage: String
    
    enum CodingKeys: String, CodingKey {
        case frontImage = "front_default"
        case shinyImage = "front_shiny"
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task {
            let url = URL(string: "https://pokeapi.co/api/v2/pokemon/1")!
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let text = String(data: data, encoding: .utf8)
            
            print(text)
            
            
            //let Images = try JSONDecoder().decode([Image].self, from: data)
            //print("images: \(images)")
        }
        
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    //セルの数を指定
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 151
        
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        // セルに枠線をセット
            cell.layer.borderColor = UIColor.black.cgColor // 外枠の色
            cell.layer.borderWidth = 1.0 // 枠線の太さ
            cell.layer.cornerRadius = 75 //セルを丸くする
            cell.backgroundColor = .white //セルの色を指定
        
        return cell
    }
    
}
