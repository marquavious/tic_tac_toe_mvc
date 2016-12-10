//
//  Board.swift
//  tic_tac_toe_mvc
//
//  Created by Marquavious on 12/10/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class Board: UIView {
    init(frame: CGRect, view: UIView) {
        super.init(frame: frame)
        self.backgroundColor = .green
        self.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(view: view)
    }
    
    func addConstraints(view:UIView){
        NSLayoutConstraint(item: view,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .leading,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .trailing,
                           multiplier: 1,
                           constant: 0).isActive = true
        
        NSLayoutConstraint(item: view,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .height,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .width,
                           multiplier: 1,
                           constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
