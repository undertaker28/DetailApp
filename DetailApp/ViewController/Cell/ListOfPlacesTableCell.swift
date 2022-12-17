//
//  ListOfPlacesTableCell.swift
//  DetailApp
//
//  Created by Pavel on 16.12.22.
//

import UIKit

class ListOfPlacesTableCell: UITableViewCell {
    lazy var cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .cyan
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 24
        return imageView
    }()
    
    lazy var cellTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "MarkPro-Bold", size: 18)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var cellDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "WorkSans-Regular", size: 16)
        label.textColor = UIColor.systemGray3
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [cellTitle, cellDescription])
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.distribution = .equalCentering
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "listOfPlacesTableCell")
        addSubviews()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        self.addSubview(cellImageView)
        self.addSubview(stackView)
    }
    
    private func makeConstraints() {
        cellImageView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.width.height.equalTo(52)
            $0.leading.equalTo(contentView).offset(20)
        }
        
        stackView.snp.makeConstraints {
            $0.top.equalTo(self.snp.top).offset(10)
            $0.leftMargin.equalToSuperview().offset(10)
            $0.rightMargin.equalToSuperview().offset(-10)
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(cellImageView.snp.trailing).offset(10)
            $0.trailing.equalTo(self.snp.trailing).offset(-10)
        }
    }
}
