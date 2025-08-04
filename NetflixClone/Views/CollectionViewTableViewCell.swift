//
//  CollectionTableViewCell.swift
//  NetflixClone
//
//  Created by Yashwant Sheshkar on 04/08/25.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    static let identifier = "CollectionViewTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}



