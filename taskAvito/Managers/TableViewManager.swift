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
    private var viewModel = [LocalModel]()
    //private funcitons
    let idScheduleCell = "idScheduleCell"//?
}

extension TableViewManager: TableViewManagerProtocol {
    func attachTableView(tableView: UITableView) {
        self.tableView = tableView
      //  self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.register(ScheduleTVC.self, forCellReuseIdentifier: idScheduleCell )

    }
    
    func setItems(viewModel: [LocalModel]) {
        self.viewModel = viewModel
        tableView.reloadData()
    }
}

extension TableViewManager: UITableViewDelegate {
    
}

extension TableViewManager: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(viewModel.count)
        return viewModel.count
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = viewModel[indexPath.row].text
//        return cell
//    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: idScheduleCell, for: indexPath) as! ScheduleTVC

        cell.backgroundColor = #colorLiteral(red: 0.7635598779, green: 0.6648930907, blue: 0.6193322539, alpha: 1)
        cell.layer.cornerRadius = 5
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    
    
}
