//
//  TableCell.swift
//  MyTableView
//
//  Created by Валентина on 14.02.2021.
//
protocol TableCellDelegate{
    func  loaded(data: String)
}

import Foundation
import UIKit

class TableCell: UITableViewCell {
    
    
    @IBOutlet weak var dataLabel: UILabel!
    
    
    @IBOutlet weak var tempDayLabel: UILabel!
    
    @IBOutlet weak var tampNightLabel: UILabel!
    
    
    
    
}
