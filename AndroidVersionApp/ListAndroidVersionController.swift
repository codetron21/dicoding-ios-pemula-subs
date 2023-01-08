//
//  ViewController.swift
//  AndroidVersionApp
//
//  Created by Apple on 07/01/23.
//

import UIKit

class ListAndroidVersionController: UIViewController {
    
    private let cellId = "android-version"
    
    private lazy var profileImage:UIImageView = {
        return buildProfileImage()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView()
    }
    
    @objc func actionNavigateToAbout(gesture: UIGestureRecognizer){
        let viewController = UINavigationController(rootViewController:AboutViewController())
        viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        present(viewController, animated: true, completion: nil)
    }
    
    private func buildView(){
        view.backgroundColor = .systemBackground
        profileImage.addGestureRecognizer(UITapGestureRecognizer(
            target: self, action: #selector(actionNavigateToAbout)
        ))
        
        let label = buildLabel()
        let topBar = buildTopBar(label:label,profileImage:profileImage)
        let tableView = buildTableView(uiContentTop: topBar)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AndroidVersionCell.self, forCellReuseIdentifier: cellId)
    }
    
    private func buildLabel()->UILabel{
        let label = UILabel()
        label.text = "Android Version App"
        label.textAlignment = NSTextAlignment.left
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        return label
    }
    
    private func buildProfileImage()->UIImageView{
        let profileImage = UIImageView()
        profileImage.image = UIImage(named: "ic_about")
        profileImage.isUserInteractionEnabled = true
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        return profileImage
    }
    
    private func buildTopBar(label:UILabel,profileImage:UIImageView)->UIStackView{
        let topBar = UIStackView()
        
        topBar.axis = .horizontal
        topBar.spacing = 10
        topBar.backgroundColor = UIColor(named: "AndroidColor")
        topBar.addArrangedSubview(label)
        topBar.addArrangedSubview(profileImage)
        topBar.alignment = .bottom
        
        view.addSubview(topBar)
        
        topBar.translatesAutoresizingMaskIntoConstraints = false
        topBar.leadingAnchor.constraint(equalTo: view.leadingAnchor)
            .isActive = true
        topBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topBar.topAnchor.constraint(equalTo: view.topAnchor)
            .isActive = true
        topBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 50).isActive = true
        
        return topBar
    }
    
    private func buildTableView(uiContentTop:UIView)->UITableView{
        let tableView = UITableView()
        let guideSafeArea = view.safeAreaLayoutGuide
        
        self.view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: uiContentTop.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo:
                                            guideSafeArea.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: guideSafeArea.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: guideSafeArea.bottomAnchor).isActive = true
        
        return tableView
    }
    
}

extension ListAndroidVersionController: UITableViewDelegate {
    override func didReceiveMemoryWarning() {
        
    }
}

extension ListAndroidVersionController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return androidVersionsData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: cellId, for: indexPath
        ) as! AndroidVersionCell
        cell.androidVerModel = androidVersionsData[indexPath.row]
        return cell
    }
    
    
}

