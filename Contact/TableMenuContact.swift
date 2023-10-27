
import UIKit

class TableMenuContact: UITableViewController {
    
    var person = Person.getPerson()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension TableMenuContact {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section < person.count {
            return person.randomElement()?.fullName
        }
        return ""
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableinfo", for: indexPath)
        
        var content = cell.defaultContentConfiguration()

        if indexPath.row == 0 {
            
            let number = person[indexPath.section]
                        
            content.text = number.number
            content.image = UIImage(systemName: "phone")
            
            cell.contentConfiguration = content
            
            return cell
            
        } else {
            
            let email = person[indexPath.section]
            content.text = email.email
            content.image = UIImage(systemName: "envelope")
            
            cell.contentConfiguration = content
            
            return cell
        }
        
    }
}
