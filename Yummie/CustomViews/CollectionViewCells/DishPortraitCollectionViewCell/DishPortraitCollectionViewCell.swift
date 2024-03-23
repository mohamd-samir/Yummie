//
//  DishPortraitCollectionViewCell.swift
//  Yummie
//
//  Created by Mohamed on 28/01/2024.
//

import UIKit
import Kingfisher

class DishPortraitCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: DishPortraitCollectionViewCell.self)

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(dish: Dish) {
        titleLbl.text = dish.name
        caloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.description
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        }

}
