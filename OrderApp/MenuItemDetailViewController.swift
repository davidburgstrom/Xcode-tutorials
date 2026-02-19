//
//  MenuItemDetailViewController.swift
//  OrderApp
//
//  Created by David Burgstrom on 3/2/25.
//

import UIKit

@MainActor
class MenuItemDetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var addToOrderButton: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailTextLabel: UILabel!
    
    @IBOutlet weak var PrepTimeLabel: UILabel!
    @IBAction func addToOrderButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0,
                       usingSpringWithDamping: 0.7, initialSpringVelocity: 0.1,
                       options: [], animations: {
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
        
        MenuController.shared.order.menuItems.append(menuItemB)
    }
        
    let menuItemB: MenuItem
    
    init?(coder: NSCoder, menuItem: MenuItem) {
        self.menuItemB = menuItem
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        nameLabel.text = menuItemB.name
        priceLabel.text = menuItemB.price.formatted(.currency(code: "usd"))
        detailTextLabel.text = menuItemB.detailText
//        PrepTimeLabel.text = String(menuItemB.prepTime)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
