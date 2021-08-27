//
//  SelectedItemViewController.swift
//  coreLocation1
//
//  Created by Digital on 26/08/21.
//

import UIKit

class SelectedItemViewController: UIViewController {
    
    var productImage: UIImage?
    var productName: String?
    var productPrice: Double?
    let locationManager = LocationManager()
    
    @IBOutlet weak var selectedImage: UIImageView!
    @IBOutlet weak var selectedMenuLabel: UILabel!
    @IBOutlet weak var selectedMenuPriceLabel: UILabel!
    @IBOutlet weak var placeOrderButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedMenuLabel.text = productName
        self.navigationItem.title = productName
        selectedImage.image = productImage
        selectedMenuLabel.text = productName
        selectedMenuPriceLabel.text = "Price: $\(productPrice!.string)"
        placeOrderButton.setTitle("Place Order: $\(productPrice!.string)", for: .normal)
    }

    @IBAction func placeOrderButton(_ sender: UIButton) {
        
        let refreshAlert = UIAlertController(title: "Food Ordered", message: """
            Your food has been ordered.
            Would you like to be notified on arrival?
            """, preferredStyle: UIAlertController.Style.alert)

            refreshAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
                self.requestNotification()
            }))

            refreshAlert.addAction(UIAlertAction(title: "No", style: .cancel, handler: { (action: UIAlertAction!) in
                  print("Handle Cancel Logic here")
            }))

            self.present(refreshAlert, animated: true, completion: nil)
        
    }
    
    func requestNotification() {
      locationManager.validateLocationAuthorizationStatus()
    }
}

extension LosslessStringConvertible {
    var string: String { .init(self) }
}
