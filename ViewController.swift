import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var infoView: UIView!
    
    @IBOutlet weak var infoImage: UIImageView!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBAction func closeInfoPopup(_ sender: Any) {
        infoView.removeFromSuperview()
        
    }
    @IBOutlet weak var closeInfoPopupDesign: UIButton!
    var tableData:[ModleData]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate=self
        
        Data.getData(completion: { (data) in
            self.tableData=data
            self.tableView.reloadData()
        })
    }
}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = tableData[indexPath.row]
        infoImage.image=data.image
        infoLabel.text=data.name
        infoView.center=view.center
        view.addSubview(infoView)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! CharacterCell
        cell.setup(modelData: tableData[indexPath.row])
        return cell
    }
}
