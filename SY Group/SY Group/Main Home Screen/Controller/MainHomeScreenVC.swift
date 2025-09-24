//
//  MainHomeScreenVC.swift
//  SY Group
//
//  Created by apple on 24/09/25.
//

import UIKit

class MainHomeScreenVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var midView: UIView!
    @IBOutlet weak var searchBar: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    let sectionTitles = [
        "Section 1 - Featured",
        "Section 2 - Popular",
        "Section 3 - Trending",
        "Section 4 - Recommended",
        "Section 5 - Categories",
        "Section 6 - Latest"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        // Register custom cell
        tableView.register(UINib(nibName: "MainScreenDataCollectionViewCell", bundle: nil), forCellReuseIdentifier: "MainScreenDataCollectionViewCell")

        // UI setup
        searchBar.layer.cornerRadius = 10
        searchBar.clipsToBounds = true
        midView.layer.cornerRadius = 10
        midView.layer.masksToBounds = true
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
    }
    
    // MARK: - TableView
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // only 1 collection view per section
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150 // adjust height for collection view
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainScreenDataCollectionViewCell", for: indexPath) as? MainScreenDataCollectionViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: indexPath.section)
        return cell
    }

    
    // MARK: - Section Headers
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
}
