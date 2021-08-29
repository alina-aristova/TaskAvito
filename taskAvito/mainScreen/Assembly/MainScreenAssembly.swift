//
//  MainScreenAssembly.swift
//  taskAvito
//
//  Created by Алина Аристова on 26.08.2021.
//

import Foundation

class MainScreenAssembly {
    
    static func assemble() -> MainScreenViewController {
        
        let view = MainScreenViewController()
        let presenter = MainScreenPresenter()
        let interactor = MainScreenInteractor()
        let router = MainScreenRouter()
        let tableViewManager: TableViewManagerProtocol = TableViewManager(company: interactor.company)
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        router.view = view
        presenter.tableViewManager = tableViewManager as! TableViewManager
        
        return view
    }
}
