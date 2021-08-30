//
//  MainScreenPresenter.swift
//  taskAvito
//
//  Created by Алина Аристова on 26.08.2021.
//

import UIKit

class MainScreenPresenter {
    weak var view: MainScreenViewControllerInput!
    var interactor: MainScreenInteractorInput!
    var router: MainScreenRouter!
    var tableViewManager: TableViewManagerProtocol!
    
    var tableView: UITableView?
}


extension MainScreenPresenter: MainScreenPresenterProtocol {
        
        func viewDidLoad() {
            //вызов интерактора, который отдаст модели
            let model = [LocalModel(text: "Kek1"),
                         LocalModel(text: "Kek2"),
                         LocalModel(text: "Kek3"),
            ] //типа пришли с сервера
            guard let tableView = self.tableView else { return }
            tableViewManager.attachTableView(tableView: tableView)
            tableViewManager.setItems(viewModel: model)
        }
    }
