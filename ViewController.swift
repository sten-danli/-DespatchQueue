import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
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
}
