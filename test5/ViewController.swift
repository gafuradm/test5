//
//  ViewController.swift
//  test5
//
//  Created by Aleigh Dinara on 21.06.2023.
//

import UIKit

class ViewController: UIViewController {
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Tap Me", for: .normal)
        button.configuration = .filled()
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstraints()
    }
}
private extension ViewController {
    func setupScene() {
        view.addSubview(button)
    }
    
    func makeConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
@objc private extension ViewController {
    func buttonTapped() {
        print("Button was tapped.")
    }
}
