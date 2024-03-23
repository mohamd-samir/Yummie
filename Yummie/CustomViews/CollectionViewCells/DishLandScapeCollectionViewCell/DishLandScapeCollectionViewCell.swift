//
//  DishLandScapeCollectionViewCell.swift
//  Yummie
//
//  Created by Mohamed on 29/01/2024.
//

import UIKit
import Kingfisher

class DishLandScapeCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: DishLandScapeCollectionViewCell.self)
//    static let identifier = "DishLandScapeCollectionViewCell"

    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    
    
    func setup(dish: Dish) {
        titleLbl.text = dish.name
        caloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.description
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        }

}
