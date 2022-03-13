//
//  ViewController.swift
//  13.2(TapBar)
//
//  Created by Mark Goncharov on 15.01.2022.
//

import UIKit

class NavigationController: UINavigationController {
    }

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contr1 = FirstViewController()
        let contr2 = SecondViewController()
        let contr3 = ThirdViewController()
        
        viewControllers = [
            createTabBarItem(title: "Page 1", image: "House", viewController: contr1),
            createTabBarItem(title: "Page 2", image: "Star", viewController: contr2),
            createTabBarItem(title: "Page 3", image: "Infinity", viewController: contr3)
        ]
        func createTabBarItem(title: String, image: String, viewController: FirstViewController) -> UINavigationController {
            let navCont = NavigationController(rootViewController: viewController)
            navCont.tabBarItem.title = title
            navCont.tabBarItem.image = UIImage(systemName: image)
            return navCont
        }
    }
}

class FirstViewController: UIViewController {
    var nextButton = UIButton()
}

extension FirstViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Page 1"
        setupViews()
        setupConstraints()
        print("viewDidLoad loaded")
    }
    @objc func setupViews() {
        view.backgroundColor = .white
        nextButton.setTitle("Forward", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addTarget(self, action: #selector(doAlert), for: .touchUpInside)
        view.addSubview(nextButton)
        print("setupViews launchded")
    }
    func setupConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        print("setupConstraints launchded")
    }
    
    @objc func doAlert(sender: UIButton!) {
            let lastPageAlert = UIAlertController(title: "This is last page", message: "Come back?", preferredStyle: UIAlertController.Style.alert)
            lastPageAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
                self.navigationController?.popToRootViewController(animated: true)
            }))
            lastPageAlert.addAction(UIAlertAction(title: "No", style: .cancel, handler: { (action: UIAlertAction!) in
                print("Stay")
            }))
            present(lastPageAlert, animated: true, completion: nil)
        }
}
