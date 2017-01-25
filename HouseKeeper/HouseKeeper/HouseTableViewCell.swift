//
//  HouseTableViewCell.swift
//  Open House
//
//  Created by Arjun Chib on 11/18/16.
//  Copyright © 2016 Profectus. All rights reserved.
//

import UIKit

class HouseTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageView?.snp.makeConstraints({ (make) in
            make.size.equalTo(128)
        })
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imageView?.snp.makeConstraints({ (make) in
            make.size.equalTo(128)
        })
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
