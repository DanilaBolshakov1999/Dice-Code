//
//  SceneDelegate.swift
//  DiceWithCode
//
//  Created by Danila Bolshakov  on 11.07.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene) // иницилизировать сцену
        window?.rootViewController = ViewController() //корневой контроллер представления
        window?.makeKeyAndVisible() //сделать ключ и видимым
    }
}
