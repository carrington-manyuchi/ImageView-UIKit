//
//  ViewController.swift
//  ImageView-UIKit
//
//  Created by DA MAC M1 157 on 2023/07/06.
//

import UIKit

class ViewController: UIViewController {
    
    private let myFirstImageView: UIImageView = {
        let images = [ #imageLiteral(resourceName: "bird"), #imageLiteral(resourceName: "birds"), #imageLiteral(resourceName: "helicopter"), #imageLiteral(resourceName: "mother") ]
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.animationImages = images
        imageView.image = UIImage(named: "birds")
        imageView.backgroundColor = .blue
        imageView.animationDuration = 10
        imageView.startAnimating()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureConstraints()
    }

    private func configureView() {
        view.addSubview(myFirstImageView)
    }

    private func configureConstraints() {
        let myFirstImageViewConstraints = [
            myFirstImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            myFirstImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            myFirstImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            myFirstImageView.heightAnchor.constraint(equalToConstant: 300)
          
        ]

        NSLayoutConstraint.activate(myFirstImageViewConstraints)
    }
}

