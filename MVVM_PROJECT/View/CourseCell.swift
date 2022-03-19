//
//  CourseCell.swift
//  MVVM_PROJECT
//
//  Created by Andre Linces on 18/03/22.
//

import UIKit

class CourseCell: UITableViewCell {
    
    var courseViewModel: CourseViewModel! {
        didSet {
            textLabel?.text = courseViewModel.name
            detailTextLabel?.text = courseViewModel.detailTextString
            accessoryType = courseViewModel.accessoryType
        }
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        contentView.backgroundColor = isHighlighted ? .highlightColor : .white
        textLabel?.textColor = isHighlighted ? UIColor.white : .mainTextBlue
        detailTextLabel?.textColor = isHighlighted ? .white : .black
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        // cell customization
        textLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        textLabel?.numberOfLines = 0
        detailTextLabel?.textColor = .black
        detailTextLabel?.font = UIFont.systemFont(ofSize: 20, weight: .light)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}

//import UIKit
//
//class CourseCell: UITableViewCell {
//
//    var courseViewModel: CourseViewModel! {
//        didSet {
//
//            textLabel?.text = courseViewModel.name
//            detailTextLabel?.text = courseViewModel.detailTextString
//            accessoryType = courseViewModel.accessoryType
//        }
//    }
//
//    //MARK: - CONFIGURATION OF AUTO LAYOUT
//
//    //Name title customization, collor cell customization.
//    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
//        super.setHighlighted(highlighted, animated: animated)
//        contentView.backgroundColor = isHighlighted ? .highlightColor : .rgb(r: 255, g: 240, b: 245)
//        textLabel?.textColor = isHighlighted ? UIColor.white : .mainTextBlue
//        detailTextLabel?.textColor = isHighlighted ? .white : .black
//
//    }
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
//
//        //cell customization
//        textLabel?.font = UIFont.boldSystemFont(ofSize: 24)
//        textLabel?.numberOfLines = 0
//        detailTextLabel?.textColor = .blue
//        detailTextLabel?.font = UIFont.systemFont(ofSize: 20, weight: .light)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError()
//    }
//
//}



