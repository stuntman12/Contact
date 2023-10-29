import UIKit


class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
    }
    
    private func setupVC() {
        guard let firstVC = viewControllers?.first as? TableFirstViewController else { return }
        guard let secondVC = viewControllers?.last as? TableSecondViewController else { return }
                
        let persons = Person.getPersons()
        firstVC.persons = persons
        secondVC.persons = persons
    }
}
