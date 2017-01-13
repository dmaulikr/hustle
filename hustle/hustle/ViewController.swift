//
//  ViewController.swift
//  hustle
//
//  Created by Gayan Jayasundara on 2016-03-25.
//  Copyright © 2016 Gayan Jayasundara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var workOuts: [String]!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.dataSource = self
    self.tableView.delegate = self
    
    workOuts = ["Day 01", "Day 02", "Day 03"]
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return workOuts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Schedule", for: indexPath) as? WorkoutCell {
            cell.cellText.text = workOuts[indexPath.row]
            return cell
        } else {
            return WorkoutCell()
        }

    }
}

