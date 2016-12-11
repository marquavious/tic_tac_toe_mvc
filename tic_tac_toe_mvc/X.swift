//
//  X.swift
//  tic_tac_toe_mvc
//
//  Created by Marquavious on 12/11/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class X: UILabel{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = frame
        self.text = "X"
        self.backgroundColor = .green
        self.translatesAutoresizingMaskIntoConstraints = false   
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
