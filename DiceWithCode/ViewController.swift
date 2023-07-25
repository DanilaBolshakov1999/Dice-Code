//
//  ViewController.swift
//  DiceWithCode
//
//  Created by Danila Bolshakov  on 11.07.2023.
//

import UIKit

class ViewController: UIViewController {

   private let backgroundImageView: UIImageView = {
       let imageView = UIImageView()
       imageView.contentMode = .scaleAspectFill
       imageView.image = UIImage(named: "green")
       imageView.translatesAutoresizingMaskIntoConstraints = false
       return imageView
    }()

    private lazy var logoImageView = UIImageView(imageName: "dice")
    private lazy var diceOneImageView = UIImageView(imageName: "DiceOne")
    private lazy var diceTwoImageView = UIImageView(imageName: "DiceOne")
            
    private lazy var rollButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Roll", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 32)
        button.backgroundColor = UIColor(red: 155/255, green: 28/255, blue: 32/255, alpha: 1)
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(rollButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func rollButtonTapped() {
        let arrayDiceTwo = [
            UIImage(named: "DiceOne")!,
            UIImage(named: "DiceTwo")!,
            UIImage(named: "DiceThree")!,
            UIImage(named: "DiceFour")!,
            UIImage(named: "DiceFive")!,
            UIImage(named: "DiceSix")!
        ]
        diceOneImageView.image = arrayDiceTwo.randomElement()
        diceTwoImageView.image = arrayDiceTwo.randomElement()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(backgroundImageView)
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        view.addSubview(logoImageView)
        logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(diceOneImageView)
        diceOneImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        diceOneImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        diceOneImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        diceOneImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true

        view.addSubview(diceTwoImageView)
        diceTwoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        diceTwoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        diceTwoImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        diceTwoImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(rollButton)
        rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rollButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        rollButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        rollButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}

extension UIImageView {
    convenience init(imageName: String) {
        self.init()
        self.image = UIImage(named: imageName)
        self.contentMode = .scaleAspectFit
        self.isUserInteractionEnabled = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
