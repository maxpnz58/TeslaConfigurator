//
//  SceneDelegate.swift
//  TeslaConfiguratorApp
//
//  Created by Max on 09.12.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Создаём окно
        let window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController()

        // Инициализируем главный координатор
        let appCoordinator = AppCoordinator(navigationController: navigationController)
        self.appCoordinator = appCoordinator

        // Настраиваем окно
        window.rootViewController = navigationController
        self.window = window
        self.window?.makeKeyAndVisible()

        // Запускаем координатор
        appCoordinator.start()
    }
}
