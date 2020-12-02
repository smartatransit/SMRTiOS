//
//  StationTableViewCell.swift
//  smarta
//
//  Created by Julian A. Fordyce on 11/29/20.
//

import UIKit

class StationTableViewCell: UITableViewCell {

    static let reuseIdentifier = "stationCell"
    
    let iconView: UIImage = {
        let image = UIImage()
        let imageView = UIImageView(image: image)
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Description"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let numericLabel: UILabel = {
        let label = UILabel()
        label.text = "8"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let minuteLabel: UILabel = {
        let label = UILabel()
        label.text = "Minutes"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func layoutSubviews() {
        setupUI()
    }
    
    func setupUI() {
        
    }


}
