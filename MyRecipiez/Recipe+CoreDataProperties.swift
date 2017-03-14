//
//  Recipe+CoreDataProperties.swift
//  MyRecipiez
//
//  Created by Richard Price on 14/03/2017.
//  Copyright © 2017 twisted echo. All rights reserved.
//

import Foundation
import CoreData


extension Recipe {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipe> {
        return NSFetchRequest<Recipe>(entityName: "Recipe");
    }

    @NSManaged public var created: NSDate?
    @NSManaged public var details: String?
    @NSManaged public var title: String?
    @NSManaged public var toImage: Image?

}
