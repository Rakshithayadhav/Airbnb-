import UIKit

class MessageVCCell: UITableViewCell {
    
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
