//
//  ViewController.swift
//  MyTableView
//
//  Created by Валентина on 14.02.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tempLabel: UILabel!
 
    @IBOutlet weak var cityLabel: UILabel!
    var array = ["one", "two", "tree", "four", "five", "six"]
    var delegate: TableCell?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cityLabel.text = "Moscow"
        tempLabel.text = "14"
        
        

    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = array[indexPath.row]
        
        cell?.textLabel?.textColor = UIColor.red
        
        return cell!
        
    }

}


