//
//  ViewController.swift
//  pokemon_sample
//
//  Created by 荘司実祐 on 2024/02/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
