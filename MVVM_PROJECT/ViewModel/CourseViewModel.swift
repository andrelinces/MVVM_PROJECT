//
//  CourseViewModel.swift
//  MVVM_PROJECT
//
//  Created by Andre Linces on 18/03/22.
//

import Foundation
import UIKit

struct CourseViewModel {
    
    let name: String
    
    let detailTextString: String
    let accessoryType: UITableViewCell.AccessoryType
    
    // Dependency Injection (DI)
    init(course: Course) {
        self.name = course.name
        
        if course.numberOfLessons > 35 {
            detailTextString = "Lessons 30+ Check it Out!"
            accessoryType = .detailDisclosureButton
        } else {
            detailTextString = "Lessons: \(course.numberOfLessons)"
            accessoryType = .none
        }
    }
    
}

