
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(tableView)
        
//        tableView.dataSource = self
        
        tableView.snp.makeConstraints { (m) in
            m.top.leading.trailing.bottom.equalToSuperview()
        }
        
        
        
    }
    

}


//extension ViewController: UITableViewDataSource {
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//    
//}
