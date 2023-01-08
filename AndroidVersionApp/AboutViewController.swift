//
//  AboutViewController.swift
//  AndroidVersionApp
//
//  Created by Apple on 08/01/23.
//

import UIKit

class AboutViewController: UIViewController {
    
    private let nameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    private let descLabel :UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 14)
        label.textColor = .gray
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    private let photoView:UIImageView = {
        let image = UIImageView()
        image.layer.masksToBounds = false
        image.backgroundColor = UIColor(named: "AndroidColor")
        image.layer.cornerRadius = 50
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor(named: "AndroidColor")?.cgColor
        image.clipsToBounds = true
        return image
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "About"
        label.textAlignment = NSTextAlignment.left
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let backImageView:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named:"ic_back")
        image.isUserInteractionEnabled = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 34).isActive = true
        image.heightAnchor.constraint(equalToConstant: 34).isActive = true
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        
        buildView()
        
        backImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(backAction)))
    }
    
    private func buildView() {
        view.backgroundColor = .systemBackground
        
        let guideSafeArea = view.safeAreaLayoutGuide
        
        photoView.image = UIImage(named:"ada_photo")
        nameLabel.text = "Adadua karunia putera"
        descLabel.text = "Programmer"
        
        view.addSubview(photoView)
        view.addSubview(nameLabel)
        view.addSubview(descLabel)
        
        photoView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        
        photoView.topAnchor.constraint(equalTo: guideSafeArea.topAnchor,constant: 74).isActive = true
        photoView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        photoView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        photoView.centerXAnchor.constraint(equalTo: guideSafeArea.centerXAnchor).isActive = true
        
        nameLabel.leadingAnchor.constraint(equalTo: guideSafeArea.leadingAnchor,constant: 10).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: guideSafeArea.trailingAnchor,constant: -10).isActive = true
        nameLabel.topAnchor.constraint(equalTo: photoView.bottomAnchor,constant: 16).isActive = true
        
        descLabel.leadingAnchor.constraint(equalTo: guideSafeArea.leadingAnchor,constant: 10).isActive = true
        descLabel.trailingAnchor.constraint(equalTo: guideSafeArea.trailingAnchor,constant: -10).isActive = true
        descLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 10).isActive = true
        
        let topBar = UIStackView()
        
        topBar.axis = .horizontal
        topBar.spacing = 10
        topBar.backgroundColor = UIColor(named: "AndroidColor")
        topBar.addArrangedSubview(backImageView)
        topBar.addArrangedSubview(titleLabel)
        topBar.alignment = .bottom
        
        view.addSubview(topBar)
        
        topBar.translatesAutoresizingMaskIntoConstraints = false
        topBar.leadingAnchor.constraint(equalTo: view.leadingAnchor)
            .isActive = true
        topBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topBar.topAnchor.constraint(equalTo: view.topAnchor)
            .isActive = true
        topBar.bottomAnchor.constraint(equalTo: guideSafeArea.topAnchor,constant: 50).isActive=true
    }
    
    @objc func backAction(gesture:UIGestureRecognizer) -> Void {        dismiss(animated: true, completion: nil)
    }
    
}
