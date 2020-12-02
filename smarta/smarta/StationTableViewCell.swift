//
//  StationTableViewCell.swift
//  smarta
//
//  Created by Julian A. Fordyce on 11/29/20.
//

import UIKit

class StationTableViewCell: UITableViewCell {

    static let reuseIdentifier = "stationCell"
    
    let iconView: UIImageView = {
        let image = UIImage()
        let imageView = UIImageView(image: image)
        return imageView
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
    
    lazy var stationStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descriptionLabel)
        stackView.axis = .vertical
        return stackView
    }()
    
    lazy var timeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.addArrangedSubview(numericLabel)
        stackView.addArrangedSubview(minuteLabel)
        stackView.axis = .vertical
        stackView.alignment = .center
        return stackView
    }()
    
    lazy var containerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.addArrangedSubview(stationStackView)
        stackView.addArrangedSubview(timeStackView)
        stackView.axis = .horizontal
        return stackView
    }()
    
    
    
    override func layoutSubviews() {
        setupUI()
    }
    
    func setupUI() {
        contentView.addSubview(iconView)
        contentView.addSubview(containerStackView)
        
    }
}
