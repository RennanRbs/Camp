//
//  DetailsViewController.swift
//  Camp
//
//  Created by Cibele Paulino on 13/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    let tableDetails = UITableView()
    let identifierBox = "BoxCell"
    let identifierCollectionResource = "ResourceCell"
    let identifierCollectionNearby = "NearbyCell"
    let identifierHeader = "HeaderCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableDetails)
        
        tableDetails.delegate = self
        tableDetails.dataSource = self
        tableDetails.separatorStyle = .none
        
        addConstraintsOfTableView()
        registerCellOfTableView()
    }
    
    func registerCellOfTableView() {
        tableDetails.register(GeneralBoxTableViewCell.self, forCellReuseIdentifier: identifierBox)
        tableDetails.register(ImageCollectionTableViewCell.self, forCellReuseIdentifier: identifierCollectionResource)
        tableDetails.register(ImageCollectionTableViewCell.self, forCellReuseIdentifier: identifierCollectionNearby)
        tableDetails.register(HeaderDetailsTableViewCell.self, forCellReuseIdentifier: identifierHeader)
    }
    
    func addConstraintsOfTableView() {
        tableDetails.translatesAutoresizingMaskIntoConstraints = false
        tableDetails.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        tableDetails.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        tableDetails.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        tableDetails.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
    }
}

extension DetailsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if (indexPath.row == 0) {
            cell = tableView.dequeueReusableCell(withIdentifier: identifierHeader, for: indexPath)
            if let cell = cell as? HeaderDetailsTableViewCell {
                cell.backgroundColor = .blue
                cell.lblName.text = "Teste"
                cell.lblRating.text = "2.3"
                cell.lblDistance.text = "1.8 Km"
                cell.lblOperation.text = "Funcionando"
                return cell
            }
        } else if (indexPath.row == 1) {
            cell = tableView.dequeueReusableCell(withIdentifier: identifierBox, for: indexPath)
            if let cell = cell as? GeneralBoxTableViewCell {
                return cell
            }
        } else if (indexPath.row == 2) {
            cell = tableView.dequeueReusableCell(withIdentifier: identifierCollectionResource, for: indexPath)
            if let cell = cell as? ImageCollectionTableViewCell {
                cell.lblTitle.text = "Resource"
                //            cell.imgCell = delegate?.cellForItemAt(self, index: indexPath.row)
                return cell
            }
        } else if (indexPath.row == 3) {
            cell = tableView.dequeueReusableCell(withIdentifier: identifierCollectionNearby, for: indexPath)
            if let cell = cell as? ImageCollectionTableViewCell {
                cell.lblTitle.text = "Nearby"
                //            cell.imgCell = delegate?.cellForItemAt(self, index: indexPath.row)
                return cell
            }
        }
        return cell
    }
}
