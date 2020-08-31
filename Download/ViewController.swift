
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
        
        let sharedDefaults = UserDefaults(suiteName: "group.ru.tasya.Download")
        print(sharedDefaults?.object(forKey: "URL"))
        
        
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
