//
//  ListOfPlacesViewController.swift
//  DetailApp
//
//  Created by Pavel on 16.12.22.
//

import UIKit
import SnapKit

class ListOfPlacesViewController: UIViewController {
    var tableView = UITableView()
    var numberOfElements = 1000
    var imageNames = ["Apartment", "BeachAccess", "BusinessCenter", "Casino", "Checkroom", "FitnessCenter", "House", "MeetingRoom", "Spa", "Storefront"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ListOfPlacesTableCell.self, forCellReuseIdentifier: "listOfPlacesTableCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.rowHeight = 68
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Places"
        tableView.tableHeaderView = UIView()
        
        makeConstraints()
    }
    
    func makeConstraints() {
        tableView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.size.height.equalTo(68)
            $0.size.width.equalToSuperview()
        }
    }
}

extension ListOfPlacesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            numberOfElements -= 1
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

extension ListOfPlacesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfElements
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listOfPlacesTableCell", for: indexPath) as! ListOfPlacesTableCell
        cell.accessoryType = .disclosureIndicator
        let imageName = imageNames[indexPath.row % 10]
        cell.cellImageView.image = UIImage(named: imageName)
        cell.cellTitle.text = "Title \(indexPath.row)"
        cell.cellDescription.text = "Description \(indexPath.row)"
        return cell
    }
}
