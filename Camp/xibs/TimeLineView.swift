//
//  TimeLineView.swift
//  Camp
//
//  Created by Rennan Rebouças on 13/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//
import UIKit
class TimeLineView: UIView, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var timelineView: TimeLineView!
    @IBOutlet weak var timeLine_TableView: UITableView!
    
    let example: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
 
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    private func commonInit() {
        Bundle.main.loadNibNamed("TimeLineView", owner: self, options: nil)
        addSubview(timelineView)
        timelineView.frame = self.bounds
        timelineView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        timeLine_TableView.register(UINib(nibName: "TimeLineTableViewCell", bundle: nil), forCellReuseIdentifier: "TimeLineTableViewCell")
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return example.count
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimeLineTableViewCell", for: indexPath)
            as? TimeLineTableViewCell
         cell?.layer.borderWidth = 2
        let myColor : UIColor = UIColor( red: 26/255, green: 188/255, blue:156/255, alpha: 1.0 )
        cell?.layer.borderColor = myColor.cgColor
        cell!.layer.cornerRadius = 10
        cell?.clipsToBounds = true
        cell?.notification_label.text = example[indexPath.section]
        return cell!
    }
}
