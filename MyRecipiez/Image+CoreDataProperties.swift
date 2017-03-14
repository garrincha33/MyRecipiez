//
//  Image+CoreDataProperties.swift
//  MyRecipiez
//
//  Created by Richard Price on 14/03/2017.
//  Copyright © 2017 twisted echo. All rights reserved.
//

import Foundation
import CoreData


extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image");
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var toRecipe: Recipe?

}
