//
//  MessageVC.swift
//  SY Group
//
//  Created by apple on 23/09/25.
//

import UIKit

class MessageVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var allButton: UIButton!
    @IBOutlet weak var travellingButton: UIButton!
    @IBOutlet weak var supportButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        let nib = UINib(nibName: "MessageVCCell", bundle: nil)
           tableView.register(nib, forCellReuseIdentifier: "MessageVCCell")
        
        allButton.layer.cornerRadius = 10
        allButton.clipsToBounds = true
        travellingButton.layer.cornerRadius = 10
        travellingButton.clipsToBounds = true
        supportButton.layer.cornerRadius = 10
        supportButton.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    

    @IBAction func allButtonTapped(_ sender: UIButton) {
       
    }
    @IBAction func travellingButtonTapped(_ sender: UIButton) {
       
    }
    @IBAction func supportButtonTapped(_ sender: UIButton) {
       
    }
    // MARK: - TableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2  // example
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MessageVCCell", for: indexPath) as? MessageVCCell else {
            return UITableViewCell()
        }
        
        // Configure cell
       // cell.name.text = "Trip \(indexPath.row + 1)"
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "MainHomeScreen", bundle: nil)
        if let destinationVC = storyboard.instantiateViewController(withIdentifier: "MainHomeScreenVC") as? MainHomeScreenVC {
            self.navigationController?.pushViewController(destinationVC, animated: true)
        }
    }

    
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

}

