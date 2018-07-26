import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dimView: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var infoView: UIView!
    
    @IBOutlet weak var infoImage: UIImageView!
    
    @IBOutlet weak var infoLabel: UILabel!
    
   
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = tableData[indexPath.row]
        
        infoImage.image=data.image
        infoLabel.text=data.name
        infoView.center=view.center
        
        view.addSubview(infoView)
        infoView.transform=CGAffineTransform(scaleX: 0.8, y: 1.2)
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.dimView.alpha=0.8
            self.infoView.transform = .identity
        })
    }
    
    @IBAction func closeInfoPopup(_ sender: Any) {
        
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.dimView.alpha=0
            self.infoView.transform=CGAffineTransform(scaleX: 0.2, y: 0.2)
        }) { (succes) in
            self.infoView.removeFromSuperview()
        }
        
    }
    
    
}
