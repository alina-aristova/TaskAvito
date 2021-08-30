//
//  MainScreenAssembly.swift
//  taskAvito
//
//  Created by Алина Аристова on 26.08.2021.
//

import Foundation

class MainScreenAssembly {
    
    static func assemble() -> MainScreenViewController {
        
        let networkService = NetworkService.shared
        let tableViewManager = TableViewManager()
        
        let view = MainScreenViewController()
        let presenter = MainScreenPresenter()
        let interactor = MainScreenInteractor()
        let router = MainScreenRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        presenter.tableViewManager = tableViewManager
        interactor.networkService = networkService
        router.view = view
        
        return view
    }
}
