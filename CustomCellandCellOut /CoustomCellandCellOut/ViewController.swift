import UIKit

class ViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate {
   @IBOutlet weak var tableList:UITableView!
    
    var menuNameArray = ["Veg Kolhapuri","Umpa","Noodles","Biscuits","Panneer"]
    var priceArray = [210,20,80,10,200]
    
override func viewDidLoad() {
        super.viewDidLoad()
        tableList.dataSource = self
        tableList.delegate = self
        
        let  nibFile = UINib(nibName: "SnackTableViewCell", bundle: nil)
        self.tableList.register(nibFile, forCellReuseIdentifier: "cell")
        
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuNameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0{
        guard let cell = self.tableList.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? MenuTableViewCell else{
            return UITableViewCell()
        }
            let name = menuNameArray [indexPath.row]
            let price = priceArray [indexPath.row]
            cell.mainCourseName.text = name
            cell.mainCourseDetail.text = "Delicious"
            cell.mainCoursePrice.text = String(price)
            return cell
            }
        else{
            guard let cell = self.tableList.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SnackTableViewCell else{
                return UITableViewCell()
           }
            let sname = menuNameArray [indexPath.row]
            let sprice = priceArray [indexPath.row]
            
            cell.snackLabel.text = sname
            cell.snackPrice.text = String(sprice)
            return cell
          }
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
    }
}

