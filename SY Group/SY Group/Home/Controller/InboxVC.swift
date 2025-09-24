//
//  MessageVC.swift
//  SY Group
//
//  Created by apple on 23/09/25.
//

import UIKit

class InboxVC: UIViewController {
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        loginButton.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        if let whishlistsVC = storyboard.instantiateViewController(withIdentifier: "WhishlistsVC") as? WhishlistsVC {
            self.navigationController?.pushViewController(whishlistsVC, animated: true)
        }
    }

}
