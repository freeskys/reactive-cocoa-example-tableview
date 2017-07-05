//
//  ViewController-TableView.swift
//  ReactiveCocoa-Ex
//
//  Created by Harditya on 7/5/17.
//  Copyright © 2017 Freeskys. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        let currentObject = objects[indexPath.row]
        cell.titleLabel.text = currentObject.title
        
        return cell
    }
    
}
