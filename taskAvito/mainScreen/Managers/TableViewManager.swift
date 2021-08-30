//
//  TableViewManager.swift
//  taskAvito
//
//  Created by Алина Аристова on 26.08.2021.
//

import UIKit

class TableViewManager: NSObject {
    //private fields
    private var tableView: UITableView!
    private var viewModel = [Employee]()

    //private funcitons
}

extension TableViewManager: TableViewManagerProtocol {
    func attachTableView(tableView: UITableView) {
        self.tableView = tableView
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func setItems(viewModel: [Employee]) {
        self.viewModel = viewModel
        tableView.reloadData()
    }
}

extension TableViewManager: UITableViewDelegate {
    
}

extension TableViewManager: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        let s = company[indexPath.row]
//        cell.textLabel?.text = s.name
        return cell
    }
    
    
}
