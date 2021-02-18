//
//  ViewController.swift
//  MyTableView
//
//  Created by Валентина on 14.02.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var restaurentNames = ["Burger", "Kitchen", "Bonsai", "Дастархан", "Индокитай","Балкан Гриль","Шерлок Холмс","Speak Easy","Morris Pub","Вкусные истории","Классик","Love&Life","Шок","Бочка"]
    
    var locationName = ["street1", "street2", "street3", "street4", "street5", "street6", "street7", "street8", "street9", "street10", "street11", "street12", "street13", "street14"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CastomeTableViewCell
        
        cell.nameLabel.text = restaurentNames[indexPath.row]
        cell.locationLabel.text = locationName[indexPath.row]

        cell.imageOfPlace.image = UIImage(named: restaurentNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
    
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

}


