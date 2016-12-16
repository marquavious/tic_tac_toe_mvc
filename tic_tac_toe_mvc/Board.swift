//
//  Board.swift
//  tic_tac_toe_mvc
//
//  Created by Marquavious on 12/10/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class Board: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
