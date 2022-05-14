
import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var mainCourseName:UILabel!
    @IBOutlet weak var mainCourseDetail:UILabel!
    @IBOutlet weak var mainCoursePrice:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        }
 override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
   }

}
