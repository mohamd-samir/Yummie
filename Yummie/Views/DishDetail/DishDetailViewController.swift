//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by Mohamed on 30/01/2024.
//

import UIKit
import ProgressHUD
import Kingfisher

class DishDetailViewController: UIViewController {
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
    }
    
    private func populateView(){
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        caloriesLbl.text = dish.formattedCalories
    }
    
    @IBAction func placeOrderBtnClicked(_ sender: UIButton) {
        
        guard let name = nameField.text?.trimmingCharacters(in: .whitespaces),
              !name.isEmpty else {
            ProgressHUD.showError("Please enter your name")
            return
        }
        
        ProgressHUD.show("Placing Order...")
        NetworkingService.shared.placeOrder(dishId: dish.id ?? "", name: name) {
            (result) in
            switch result {
            case .success(_):
                ProgressHUD.showSuccess("Your order has been received.👨🏼‍🍳")
            case.failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
    }
    
}
