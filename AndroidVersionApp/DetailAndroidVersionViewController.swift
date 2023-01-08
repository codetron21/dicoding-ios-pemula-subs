//
//  DetailAndroidVersionViewController.swift
//  AndroidVersionApp
//
//  Created by Apple on 08/01/23.
//

import UIKit

class DetailAndroidVersionViewController: UIViewController {
    
    var androidVerModel: AndroidVersionModel?
    
    private let versionNameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    private let descLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let featuresLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    private let featureLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .black
        label.text = "Features:"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    private let sourcesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        return label
    }()
    
    private let releaseYearLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 12)
        label.textColor = .gray
        return label
    }()
    
    private let logoImageView:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = UIColor(named: "AndroidColor")
        image.layer.masksToBounds = false
        image.layer.cornerRadius = 50
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor(named: "AndroidColor")?.cgColor ?? UIColor.green.cgColor
        image.clipsToBounds = true
        return image
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Detail Android Version"
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
    
    private func buildView(){
        view.backgroundColor = .systemBackground
        
        let guideSafeArea = view.safeAreaLayoutGuide
        
        logoImageView.image = androidVerModel?.logo
        releaseYearLabel.text = androidVerModel?.releaseDate
        versionNameLabel.text = androidVerModel?.versionName
        descLabel.text = androidVerModel?.description ?? "No descriptions"
        sourcesLabel.text = androidVerModel?.sources
        featuresLabel.text = androidVerModel?.features.map{ (feature) ->
            String in
            return "- \(feature)"
        }.joined(separator: "\n") ?? "No new features"
        
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
        
        view.addSubview(releaseYearLabel)
        
        releaseYearLabel.translatesAutoresizingMaskIntoConstraints = false
        releaseYearLabel.topAnchor.constraint(equalTo: topBar.bottomAnchor,constant: 10).isActive = true
        releaseYearLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        view.addSubview(sourcesLabel)
        
        sourcesLabel.translatesAutoresizingMaskIntoConstraints = false
        sourcesLabel.topAnchor.constraint(equalTo: topBar.bottomAnchor,constant: 10).isActive = true
        sourcesLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        
        view.addSubview(logoImageView)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.topAnchor.constraint(
            equalTo: topBar.bottomAnchor,
            constant: 50
        ).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: guideSafeArea.centerXAnchor).isActive = true
        
        view.addSubview(versionNameLabel)
        
        versionNameLabel.translatesAutoresizingMaskIntoConstraints = false
        versionNameLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor,constant: 10).isActive = true
        versionNameLabel.centerXAnchor.constraint(equalTo: guideSafeArea.centerXAnchor).isActive = true
        
        view.addSubview(descLabel)
        
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.topAnchor.constraint(equalTo: versionNameLabel.bottomAnchor,constant: 10).isActive = true
        descLabel.centerXAnchor.constraint(equalTo: guideSafeArea.centerXAnchor).isActive = true
        descLabel.leadingAnchor.constraint(greaterThanOrEqualTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        descLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        
        view.addSubview(featureLabel)
        
        featureLabel.translatesAutoresizingMaskIntoConstraints = false
        featureLabel.topAnchor.constraint(equalTo:
                                            descLabel.bottomAnchor,constant: 10).isActive = true
        featureLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        view.addSubview(featuresLabel)
        
        featuresLabel.translatesAutoresizingMaskIntoConstraints = false
        featuresLabel.topAnchor.constraint(equalTo: featureLabel.bottomAnchor,constant: 10).isActive = true
        featuresLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        featuresLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
    }
    
    @objc func backAction(gesture:UIGestureRecognizer) -> Void {        dismiss(animated: true, completion: nil)
    }
    
    
}
