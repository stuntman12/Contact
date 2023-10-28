
import UIKit


final class TableMenuContact: UITableViewController {
    
    var person = Person.getPerson()
    
    
}

extension TableMenuContact {

    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person[section].fullName
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableinfo", for: indexPath)
        
        var content = cell.defaultContentConfiguration()

        if indexPath.row == 0 {
            
            let number = person[indexPath.section].number
                        
            content.text = number
            content.image = UIImage(systemName: "phone")
            
            cell.contentConfiguration = content
            
            return cell
            
        } else {
            
            let email = person[indexPath.section].email
            content.text = email
            content.image = UIImage(systemName: "envelope")
            
            cell.contentConfiguration = content
            
            return cell
        }
    }
}
