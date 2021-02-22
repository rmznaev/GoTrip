//
//  LocationCell.swift
//  GoTrip
//
//  Created by Ramazan Abdullayev on 22.02.21.
//

import UIKit

class LocationCell: UITableViewCell {
    
    var location: Location? {
        didSet {
            if let title = location?.title {
                self.locationTitle.text = title
            }
            
            if let subtitle = location?.subtitle {
                self.locationSubtitle.text = subtitle
            }
        }
    }
    
    private let locationTitle: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let locationSubtitle: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(locationTitle)
        addSubview(locationSubtitle)
        
        NSLayoutConstraint.activate([
            locationTitle.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            locationTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            locationTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            locationTitle.heightAnchor.constraint(equalToConstant: 20),
            
            locationSubtitle.topAnchor.constraint(equalTo: locationTitle.bottomAnchor, constant: 5),
            locationSubtitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            locationSubtitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            locationSubtitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            locationSubtitle.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
