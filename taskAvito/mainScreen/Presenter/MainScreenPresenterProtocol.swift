//
//  MainScreenPresenterProtocol.swift
//  taskAvito
//
//  Created by Алина Аристова on 26.08.2021.
//

import UIKit

protocol MainScreenPresenterProtocol: AnyObject {
    var tableView: UITableView? { get set }
    func viewDidLoad()
}

