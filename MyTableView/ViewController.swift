//
//  ViewController.swift
//  MyTableView
//
//  Created by Валентина on 14.02.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var restaurentNames = ["Burger", "Kitchen", "Bonsai", "Дастархан", "Индокитай","Балкан Гриль","Шерлок Холмс","Speak Easy","Morris Pub","Вкусные истории","Классик","Love&Life","Шок","Бочка"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.


    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = restaurentNames[indexPath.row]
        
        cell?.imageView?.image = UIImage(named: restaurentNames[indexPath.row])
        
        
        return cell!
        
    }

}


