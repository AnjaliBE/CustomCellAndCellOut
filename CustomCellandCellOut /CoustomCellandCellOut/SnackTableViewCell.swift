import UIKit

class SnackTableViewCell: UITableViewCell {
    
    @IBOutlet weak var snackLabel:UILabel!
    @IBOutlet weak var snackPrice:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
