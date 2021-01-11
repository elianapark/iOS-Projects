//
//  FirstSettingsViewController.swift
//  Trip Pie (Beta)
//
//  Created by Eliana Han on 11/8/20.
//

import UIKit

class FirstSettingsViewController: UIViewController {

    @IBOutlet weak var SettingsOne: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
   
    private lazy var firstViewController: UIViewController = {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController")
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    private lazy var secondViewController: UIViewController = {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    private func updateView() {
        if SettingsOne.selectedSegmentIndex == 0 {
            remove(asChildViewController: secondViewController)
            add(asChildViewController: firstViewController)
        }
        
        if SettingsOne.selectedSegmentIndex == 1 {
            remove(asChildViewController: firstViewController)
            add(asChildViewController: secondViewController)
        }
    }
    
    private func add(asChildViewController viewController: UIViewController) {
        addChild(viewController)
        containerView.addSubview(viewController.view)
        
        viewController.view.frame = containerView.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        viewController.didMove(toParent: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParent: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParent()
    }
    
    @IBAction func options(_ sender: Any) {
    }
}
