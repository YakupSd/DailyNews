//
//  FeedCellController.swift
//  DailyNews
//
//  Created by Latif Atci on 3/7/20.
//  Copyright © 2020 Latif Atci. All rights reserved.
//

import UIKit


class FeedCell : UICollectionViewCell {
    
    let newsImageView = UIImageView(frame: .zero)
    let headerLabel = UILabel(frame: .zero)
    let timeLabel = UILabel(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(headerLabel)
        addSubview(newsImageView)
        addSubview(timeLabel)
        newsImageView.image = UIImage(named: "clem")
        newsImageView.translatesAutoresizingMaskIntoConstraints = false
        newsImageView.clipsToBounds = true
        
        headerLabel.text = "Ilker Kaleli iddiali diziyle geri dondu ! Ilker Kaleli iddiali diziyle geri dondu"
        headerLabel.textColor = .darkGray
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.font = .systemFont(ofSize: 22)
        headerLabel.adjustsFontSizeToFitWidth = true
        headerLabel.numberOfLines = 0
        
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.text = "5 Minutes Ago"
        timeLabel.textColor = .lightGray
        timeLabel.adjustsFontSizeToFitWidth = true
        timeLabel.font = .systemFont(ofSize: 12)
        
        let labelStackView = UIStackView()
        addSubview(labelStackView)
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        labelStackView.addArrangedSubview(headerLabel)
        labelStackView.addArrangedSubview(timeLabel)
        labelStackView.axis = .vertical
        
        NSLayoutConstraint.activate([
            newsImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            newsImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            newsImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor ),
            newsImageView.heightAnchor.constraint(equalToConstant: 240),
            
            labelStackView.topAnchor.constraint(equalTo: newsImageView.bottomAnchor),
            labelStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            labelStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            labelStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
        ])
        
        
    }
}

