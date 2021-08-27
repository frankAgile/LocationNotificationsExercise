//
//  MenuListViewController.swift
//  coreLocation1
//
//  Created by Digital on 26/08/21.
//

import UIKit

class MenuListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Swifty TakeOut"
        self.registerTableViewCells()
    }
    
    private func registerTableViewCells() {
        let menuTableViewCell = UINib(nibName: "MenuTableViewCell", bundle: nil)
        self.tableView.register(menuTableViewCell, forCellReuseIdentifier: "MenuTableViewCell")
    }
}

extension MenuListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell") as? MenuTableViewCell {
            cell.menuLabel.text = menuItems[indexPath.row].name
            cell.menuImageView.image = UIImage(imageLiteralResourceName: menuItems[indexPath.row].imageName)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SelectedItemViewController()
        vc.productImage = UIImage(imageLiteralResourceName: menuItems[indexPath.row].imageName)
        vc.productName = menuItems[indexPath.row].name
        vc.productPrice = menuItems[indexPath.row].price
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
}
