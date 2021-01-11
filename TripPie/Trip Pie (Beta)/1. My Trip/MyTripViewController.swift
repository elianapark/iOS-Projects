//
//  MyTripViewController.swift
//  Trip Pie (Beta)
//
//  Created by Eliana Han on 11/7/20.
//

import UIKit

class MyTripViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
}

extension MyTripViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { return 10 }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let MyTripCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyTripCollectionViewCell", for: indexPath) as? MyTripCollectionViewCell else { return UICollectionViewCell() }
        return MyTripCell
    }
    
    //헤더뷰
    
}


extension MyTripViewController: UICollectionViewDelegate {
    
}

extension MyTripViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 240)
    }
}
