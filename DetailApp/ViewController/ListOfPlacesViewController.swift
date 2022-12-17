//
//  ListOfPlacesViewController.swift
//  DetailApp
//
//  Created by Pavel on 16.12.22.
//

import UIKit
import SnapKit

class ListOfPlacesViewController: UIViewController {
    private lazy var tableView = UITableView()
    private lazy var arrayOfImageNames = ["Apartment", "BeachAccess", "BusinessCenter", "Casino", "Checkroom", "FitnessCenter", "House", "MeetingRoom", "Spa", "Storefront"]
    private lazy var tupleOfImageNames = fillTupleOfImageNames()
    
    private func fillTupleOfImageNames() -> [(imageName: String, index: Int)] {
        var tupleOfImageNames = [(String, Int)]()
        for i in 0..<1000 {
            tupleOfImageNames.append((arrayOfImageNames[i % 10], i))
        }
        return tupleOfImageNames
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
        setupBarButtonItem()
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
    
    private func setupBarButtonItem() {
        let editBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(didTapSort))
        self.navigationItem.rightBarButtonItem = editBarButtonItem
    }
    
    @objc func didTapSort() {
        tableView.isEditing = tableView.isEditing ? false : true
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
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        tupleOfImageNames.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tupleOfImageNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

extension ListOfPlacesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tupleOfImageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listOfPlacesTableCell", for: indexPath) as! ListOfPlacesTableCell
        cell.accessoryType = .disclosureIndicator
        let imageName = tupleOfImageNames[indexPath.row].imageName
        cell.cellImageView.image = UIImage(named: imageName)
        cell.cellTitle.text = "Title \(tupleOfImageNames[indexPath.row].index)"
        cell.cellDescription.text = "Description \(tupleOfImageNames[indexPath.row].index)"
        return cell
    }
}
