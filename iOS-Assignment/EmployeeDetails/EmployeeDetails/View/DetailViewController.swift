//
//  DetailViewController.swift
//  EmployeeDetails
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//

import UIKit

class DetailViewController: UIViewController {
    var employee: EmployeeModel?
    private var viewModel: EmployeeDetailViewModel?
    
    // A UIScrollView and a contentView are added to the DetailViewController. The contentView is a subview of the scrollView and contains all the UI elements.
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        if let descriptor = UIFontDescriptor(name: "Times New Roman", size: 21).withSymbolicTraits(.traitBold) {
            label.font = UIFont(descriptor: descriptor, size: 20)
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let otherDetailsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Employee Detail"
        
        setupUI()
        configure(with: employee)
    }
   
    private func setupUI() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(otherDetailsLabel)
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            avatarImageView.heightAnchor.constraint(equalToConstant: 500),
            
            nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 20),
            nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            otherDetailsLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            otherDetailsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            otherDetailsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            otherDetailsLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }
    
    private func configure(with user: EmployeeModel?) {
        guard let user = user else { return }
        
        // capitalized the user name.
        nameLabel.text = user.login.capitalized
        viewModel = EmployeeDetailViewModel(user: user)
        
        nameLabel.text = viewModel?.userName
        
        if let avatarURL = viewModel?.avatarURL {
            URLSession.shared.dataTask(with: avatarURL) { [weak self] data, response, error in
                guard let self = self, let data = data, let image = UIImage(data: data) else { return }
                DispatchQueue.main.async {
                    self.avatarImageView.image = image
                }
            }
            .resume()
        }
        otherDetailsLabel.text = viewModel?.otherDetails
    }
}
// Now, updating the "ViewController" to navigate to "DetailViewController" when a user selects a row in the table view.
