//
//  NewTableViewCell.swift
//  Stretch My Header
//
//  Created by carmen cheng on 2016-12-06.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

import UIKit

class NewTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var headlineLabel: UILabel!
    
    var newsItem: NewsItem?{
        didSet{
            if let item = newsItem{
                categoryLabel.text = item.category.toString()
                categoryLabel.textColor = item.category.toColor()
                headlineLabel.text = item.summary
            }
            else{
                categoryLabel.text = nil
                headlineLabel.text = nil
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
