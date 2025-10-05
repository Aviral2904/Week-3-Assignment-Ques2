//
//  ViewController.swift
//  LoginSignupApp
//
//  Created by Mishra, Aviral on 15/09/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let welcomeVC = storyboard.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        
        if let sceneDelegate = self.view?.window?.windowScene?.delegate as? SceneDelegate{
            
            let newNavigationController = UINavigationController(rootViewController: welcomeVC)
            
            sceneDelegate.window?.rootViewController = newNavigationController
        }
        
        
    }
    
    @IBAction func signTapped(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let signVC = storyboard.instantiateViewController(withIdentifier: "SignUpViewController")
        
        self.navigationController?.pushViewController(signVC, animated: true)
        
    }
    
    
}

