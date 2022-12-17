//
//  ListOfPlacesViewController.swift
//  DetailApp
//
//  Created by Pavel on 16.12.22.
//

import UIKit
import SnapKit

class ListOfPlacesViewController: UIViewController {
    private lazy var tupleOfImageNames = fillTupleOfImageNames()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ListOfPlacesTableCell.self, forCellReuseIdentifier: "listOfPlacesTableCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 68
        tableView.tableHeaderView = UIView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Places"
        setupBarButtonItem()
        makeConstraints()
    }
    
    private func setupBarButtonItem() {
        let editBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(didTapSort))
        self.navigationItem.rightBarButtonItem = editBarButtonItem
    }
    
    private func makeConstraints() {
        tableView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.size.height.equalTo(68)
            $0.size.width.equalToSuperview()
        }
    }
    
    @objc func didTapSort() {
        tableView.isEditing = tableView.isEditing ? false : true
    }
    
    private func fillTupleOfImageNames() -> [(imageName: String, index: Int)] {
        var tupleOfImageNames = [(String, Int)]()
        for i in 0..<1000 {
            tupleOfImageNames.append((ImageNames.arrayOfImageNames[i % 10], i))
        }
        return tupleOfImageNames
    }
}

extension ListOfPlacesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsViewController = PlaceDetailViewController()
        detailsViewController.imageName = tupleOfImageNames[indexPath.row].imageName
        detailsViewController.index = tupleOfImageNames[indexPath.row].index
        navigationController?.pushViewController(detailsViewController, animated: true)
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
