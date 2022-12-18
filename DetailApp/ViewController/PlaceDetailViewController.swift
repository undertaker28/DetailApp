//
//  PlaceDetailViewController.swift
//  DetailApp
//
//  Created by Pavel on 17.12.22.
//

import UIKit

final class PlaceDetailViewController: UIViewController {
    lazy var imageName = ""
    lazy var index = 0
    
    private lazy var placeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor(named: "ElementsColor")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 52
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "MarkPro-Bold", size: 26)
        label.textColor = UIColor(named: "TitleColor")
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "WorkSans-Regular", size: 24)
        label.textColor = UIColor(named: "DescriptionColor")
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel])
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "BackgroundColor")
        setupStackView()
        setupNavigationBar()
        addSubviews()
        makeConstraints()
    }
    
    private func setupStackView() {
        placeImageView.image = UIImage(named: imageName)
        titleLabel.text = "Title: \(index)"
        descriptionLabel.text = "Description: \(index)"
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "ElementsColor") as Any]
        title = "Place info"
    }
    
    private func addSubviews() {
        view.addSubview(placeImageView)
        view.addSubview(stackView)
    }
    
    private func makeConstraints() {
        placeImageView.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
            $0.width.height.equalTo(104)
        }
        
        stackView.snp.makeConstraints {
            $0.top.equalTo(placeImageView.snp.bottom).offset(15)
            $0.centerX.equalToSuperview()
        }
    }
}
