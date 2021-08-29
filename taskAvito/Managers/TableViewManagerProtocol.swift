//
//  TableViewManagerProtocol.swift
//  taskAvito
//
//  Created by Алина Аристова on 26.08.2021.
//

import UIKit

protocol TableViewManagerProtocol {
    func attachTableView(tableView: UITableView)
    func setItems(viewModel: [LocalModel])
}

