//
//  LoginPageViewController.swift
//  SY Group
//
//  Created by apple on 22/09/25.
//

import UIKit

class LoginPageViewController: UIViewController {
    @IBOutlet weak var topStackView: UIStackView!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var emailButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        topStackView.layer.borderWidth = 1
        topStackView.layer.borderColor = UIColor.black.cgColor
        topStackView.layer.cornerRadius = 10
        topStackView.clipsToBounds = true
        continueButton.layer.cornerRadius = 10
        topStackView.layer.borderWidth = 1
        topStackView.layer.borderColor = UIColor.black.cgColor
        topStackView.layer.cornerRadius = 10
        topStackView.clipsToBounds = true
        continueButton.layer.cornerRadius = 10
        continueButton.clipsToBounds = true

          // Add borders to the last 4 buttons
        let buttons = [emailButton, googleButton, appleButton, facebookButton]
          for button in buttons {
              button?.layer.borderWidth = 1
              button?.layer.borderColor = UIColor.black.cgColor
              button?.layer.cornerRadius = 10
              //button?.clipsToBounds = true
          }
    }
    

    @IBAction func cancelButtonTapped(_ sender: UIButton) {
       
    }
    @IBAction func dropDownButtonTapped(_ sender: UIButton) {
       
    }
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        
     let storyboard = UIStoryboard(name: "Home", bundle: nil)
      if let profileVC = storyboard.instantiateViewController(withIdentifier: "ProfileVC") as? ProfileVC {
               self.navigationController?.pushViewController(profileVC, animated: true)
      }
       
    }
    @IBAction func emailButtonTapped(_ sender: UIButton) {
       
    }
    @IBAction func googleButtonTapped(_ sender: UIButton) {
       
    }
    @IBAction func appleButtonTapped(_ sender: UIButton) {
       
    }
    @IBAction func facebookButtonTapped(_ sender: UIButton) {
       
    }
  

}
