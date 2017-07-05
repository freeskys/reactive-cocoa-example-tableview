//
//  ViewController.swift
//  ReactiveCocoa-Ex
//
//  Created by Harditya on 7/5/17.
//  Copyright © 2017 Freeskys. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var allDataButton: UIButton!
    @IBOutlet weak var dataCountLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var objects = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Binding posts view model
        PostsViewModel.shared.signal.observeValues { (value: [Post]) in
            self.objects = value
            self.dataCountLabel.text = "Total: \(value.count)"
            
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Actions
    
    @IBAction func getAllData(_ sender: UIButton) {
        PostsViewModel.shared.all()
    }

    @IBAction func clearData(_ sender: UIButton) {
        PostsViewModel.shared.clear()
    }
    
}

