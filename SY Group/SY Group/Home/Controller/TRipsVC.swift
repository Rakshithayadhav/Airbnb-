//
//  MessageVC.swift
//  SY Group
//
//  Created by apple on 23/09/25.
//

import UIKit

class TRipsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var getstartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "TripTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TripTableViewCell")
        getstartButton.layer.cornerRadius = 10
        getstartButton.clipsToBounds = true
        
    }
    @IBAction func getstartButtonTapped(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        if let messageVC = storyboard.instantiateViewController(withIdentifier: "MessageVC") as? MessageVC {
            self.navigationController?.pushViewController(messageVC, animated: true)
        }
    }
        
        // MARK: - TableView DataSource
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3  // example
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TripTableViewCell", for: indexPath) as? TripTableViewCell else {
                return UITableViewCell()
            }
                        
            return cell
        }
    }
    

