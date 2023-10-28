
import UIKit


final class TableInfoContact: UITableViewController {
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person?.fullName
    }
}

extension TableInfoContact {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableContact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
    
            content.text = person?.number
            content.image = UIImage(systemName: "phone")
            
            cell.contentConfiguration = content
            
            return cell
            
        } else {
            
            content.text = person?.email
            content.image = UIImage(systemName: "envelope")
            
            cell.contentConfiguration = content
            
            return cell
        }
    }
}
