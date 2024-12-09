//
//  AppCoordinator.swift
//  TeslaConfiguratorApp
//
//  Created by Max on 09.12.2024.
//

import UIKit

class AppCoordinator {
    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        showMainApp()
    }

    private func showMainApp() {
        let mainViewController = OnboardingViewController()
        navigationController.setViewControllers([mainViewController], animated: true)
    }
}

