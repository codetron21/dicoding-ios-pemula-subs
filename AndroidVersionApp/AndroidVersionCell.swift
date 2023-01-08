//
//  AndroidVersionCellTableViewCell.swift
//  AndroidVersionApp
//
//  Created by Apple on 08/01/23.
//

import UIKit

class AndroidVersionCell: UITableViewCell {
    
    var androidVerModel:AndroidVersionModel? {
        didSet{
            versionNameLabel.text = androidVerModel?.versionName
            releaseDateLabel.text = androidVerModel?.releaseDate
            logo.image = androidVerModel?.logo
        }
    }
    
    private let versionNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    private let releaseDateLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textColor = .gray
        label.font = UIFont.italicSystemFont(ofSize: 16)
        label.textAlignment = .left
        return label
    }()
    
    
    private let logo: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = UIColor(named: "AndroidColor")
        image.layer.masksToBounds = false
        image.layer.cornerRadius = 40
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor(named: "AndroidColor")?.cgColor ?? UIColor.green.cgColor
        image.clipsToBounds = true
        return image
    }()
    
    private let textContent = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        buildView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    private func buildView(){
        contentView.addSubview(logo)
        
        // set up image
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.widthAnchor.constraint(equalToConstant: 80).isActive = true
        logo.heightAnchor.constraint(equalToConstant: 80).isActive = true
        logo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10).isActive = true
        logo.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive = true
        logo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -10).isActive = true
        
        // set up text
        textContent.axis = .vertical
        textContent.spacing = 5
        textContent.addArrangedSubview(versionNameLabel)
        textContent.addArrangedSubview(releaseDateLabel)
        
        contentView.addSubview(textContent)
        
        textContent.translatesAutoresizingMaskIntoConstraints = false
        textContent.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        textContent.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -10).isActive = true
        textContent.leadingAnchor.constraint(equalTo: logo.trailingAnchor,constant: 10).isActive = true
    }
    
}
