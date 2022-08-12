//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Manish on 11/08/22.
//

import UIKit

class HeroHeaderUIView: UIView {

    private let downloadButton : UIButton = {
        let button = UIButton()
        button.setTitle("Deownload", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let playButton : UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let heroImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "heroImage")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor,
                                UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        applyContraints()
    }

    private func applyContraints(){
        let playButtonConstraints = [playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
                                     playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
                                     playButton.widthAnchor.constraint(equalToConstant: 120)
        ]
       
        
        let downloadButtonConstraints = [downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
                                         downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
                                         downloadButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        NSLayoutConstraint.activate(playButtonConstraints)
        NSLayoutConstraint.activate(downloadButtonConstraints)
    }
    override func layoutSubviews() {
        heroImageView.frame = bounds
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
