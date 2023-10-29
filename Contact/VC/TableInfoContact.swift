
import UIKit


final class TableInfoContact: UITableViewController {
    
    var persons: [Person] = []
}

extension TableInfoContact {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableContact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let person = persons[indexPath.row]
        
        if indexPath.row == 0 {
    
            content.text = person.number
            content.image = UIImage(systemName: "phone")
        
        } else {
            
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
            
        }
        cell.contentConfiguration = content
        
        return cell
    }
}
