//
//  CollectionViewImageListViewController
//  Camp
//
//  Created by Cibele Paulino on 16/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewImageListViewController: UICollectionViewController {
    weak var delegate: CollectionViewImageListDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.frame = self.view.frame
        self.collectionView!.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.backgroundColor = UIColor.init(named: "LightGray")
        self.collectionView.layer.borderColor = UIColor.init(named: "Green")?.cgColor
        self.collectionView.layer.borderWidth = 2.0
        self.collectionView.layer.cornerRadius = 5.0
    }
    
    init() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        layout.itemSize = CGSize(width: 42, height: 38)
        layout.scrollDirection = .horizontal
        super.init(collectionViewLayout: layout)
        self.collectionView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let number = delegate?.numberOfItemsInSection(collectionView) {
            return number
        } else {
            return 0
        }
        
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        if let cell = cell as? ImageCollectionViewCell {
            cell.imgCell = delegate?.cellForItemAt(collectionView, index: indexPath.row)
            return cell
        }
        return cell
    }
}
