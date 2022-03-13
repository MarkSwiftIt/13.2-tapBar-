//
//  ViewContr2.swift
//  13.2(TapBar)
//
//  Created by Mark Goncharov on 15.01.2022.
//

import UIKit

class SecondViewController: FirstViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Page 2"
    }
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .gray
    }
    override func setupViews() {
        nextButton.setTitle("Forward", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addAction(UIAction(handler: { [weak self] _ in
            self?.navigationController?.pushViewController(SecondOfSecondViewController(), animated: true)
        }), for: .touchUpInside)
        view.addSubview(nextButton)
    }
}
class SecondOfSecondViewController: FirstViewController {
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .yellow
    }
    override func setupViews() {
        nextButton.setTitle("Forward", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addTarget(self, action: #selector(doAlert), for: .touchUpInside)
        view.addSubview(nextButton)
    }
}
