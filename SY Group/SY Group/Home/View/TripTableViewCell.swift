//
//  TripTableViewCell.swift
//  SY Group
//
//  Created by apple on 23/09/25.
//

import UIKit

class TripTableViewCell: UITableViewCell {

    @IBOutlet weak var homeimage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var progressBar: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
         homeimage.layer.cornerRadius = 10
         homeimage.clipsToBounds = true
         name.layer.cornerRadius = 10
         name.clipsToBounds = true
         view.layer.cornerRadius = 10
         view.clipsToBounds = true
         progressBar.layer.cornerRadius = progressBar.frame.size.height / 2
         progressBar.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
