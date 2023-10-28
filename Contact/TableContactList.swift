
import UIKit


final class TableContactList: UITableViewController {
    
    let person = Person.getPerson()
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showInfo" {
            guard let InfoVC = segue.destination as? TableInfoContact else { return }
            InfoVC.person = sender as? Person
        }
    }
}
extension TableContactList {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableContact", for: indexPath)
        
        let person = person[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = person[indexPath.row]
        performSegue(withIdentifier: "showInfo", sender: person)
    }
}


