//
//  ItemCell.swift
//  MyRecipiez
//
//  Created by Richard Price on 14/03/2017.
//  Copyright © 2017 twisted echo. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    
    //@IBOutlet weak var newCellImage: UIImageView!

    @IBOutlet weak var cellImg: UIImageView!
    
    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var cellDetails: UILabel!

    func configureCell(recipe: Recipe) {
        
        cellTitle.text = recipe.title
        cellDetails.text = recipe.details
        cellImg.image = recipe.toImage?.image as? UIImage
        
        //newCellImage.image = recipe.toImage?.image as? UIImage
        
    }
}
