//
//  RecipeDetailsVC.swift
//  MyRecipiez
//
//  Created by Richard Price on 15/03/2017.
//  Copyright © 2017 twisted echo. All rights reserved.
//

import UIKit
import CoreData

class RecipeDetailsVC: UIViewController {
    

    
    
    @IBOutlet weak var recipeTitle: UITextView!
    
    @IBOutlet weak var recipeDetails: UITextView!
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    var itemToEdit: Recipe?
    var imagePicker: UIImagePickerController!
    
    var selectedImage: UIImage?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(RecipeDetailsVC.handleImage))
        recipeImage.addGestureRecognizer(tap)
        recipeImage.isUserInteractionEnabled = true

    }
    
    func handleImage() {
        
        let controller = UIImagePickerController()
        controller.delegate = self
        present(controller, animated: true, completion: nil)
        
        
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        var item: Recipe!
        let picture = Image(context: context)
        picture.image = recipeImage.image
        
        
        
        if itemToEdit == nil {
            
            item = Recipe(context: context)
            
        } else {
            
            item = itemToEdit
            
        }
        
        item.toImage = picture
        
        if let title = recipeTitle.text {
            
            item.title = title
            
        }
        
      
        
        if let details = recipeDetails.text {
            
            item.details = details
            
        }
        
        ad.saveContext()
        dismiss(animated: true, completion: nil)
    }

}



extension RecipeDetailsVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    
        if let image = info["UIImagePickerControllerOriginalImage"] as? UIImage {
            
            selectedImage = image
            recipeImage.image = image
            
        }
        
        dismiss(animated: true, completion: nil)
     
    }
    
}


