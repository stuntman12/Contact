
import UIKit


final class TableFirstViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let tableVC = segue.destination as? TableInfoContact else { return }
            tableVC.persons = persons
        }
    }
}

extension TableFirstViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableContact", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}



