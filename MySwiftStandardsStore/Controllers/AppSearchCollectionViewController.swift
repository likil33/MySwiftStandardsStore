//
//  AppSearchCollectionViewController.swift
//  MySwiftStandardsStore
//
//  Created by Santhosh K on 06/01/22.
//

import UIKit


class AppSearchCollectionViewController: UICollectionViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    // initialized with a non-nil layout parameter
        init() {
            super.init(collectionViewLayout: UICollectionViewFlowLayout())
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
}
