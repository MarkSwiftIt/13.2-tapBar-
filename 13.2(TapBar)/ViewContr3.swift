//
//  ViewContr3.swift
//  13.2(TapBar)
//
//  Created by Mark Goncharov on 15.01.2022.
//

import UIKit
class ThirdViewController: FirstViewController {
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .orange
        title = "Page 3"
    }
    override func setupViews() {
        nextButton.setTitle("Forward", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addAction(UIAction(handler: { [weak self] _ in
            self?.navigationController?.pushViewController(SecondOfThirdViewController(), animated: true)
        }), for: .touchUpInside)
        view.addSubview(nextButton)
    }
}
class SecondOfThirdViewController: FirstViewController {
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .blue
    }
    override func setupViews() {
        nextButton.setTitle("Forward", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addAction(UIAction(handler: { [weak self] _ in
            self?.navigationController?.pushViewController(ThirdOfThirdViewController(), animated: true)
        }), for: .touchUpInside)
        view.addSubview(nextButton)
    }
}
class ThirdOfThirdViewController: FirstViewController {
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .orange
    }
    override func setupViews() {
        nextButton.setTitle("Forward", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addTarget(self, action: #selector(doAlert), for: .touchUpInside)
        view.addSubview(nextButton)
    }
}
