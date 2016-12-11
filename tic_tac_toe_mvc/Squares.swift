//
//  Square.swift
//  tic_tac_toe_mvc
//
//  Created by Marquavious on 12/10/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class Square: UIView {
    
    var id: SquareName!
    
    init(frame: CGRect, id:SquareName, color: UIColor) {
        super.init(frame: frame)
        self.layer.borderWidth = 1.5
        self.id = id
        self.backgroundColor = color
        self.translatesAutoresizingMaskIntoConstraints = false
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Square.printId)))
    }
    
    enum Placement {
        case top
        case middle
        case bottom
    }
    
    enum SquareName: String {
        case tr
        case tm
        case tl
        case mr
        case mm
        case ml
        case bl
        case bm
        case br
        case main
    }
    
    func printId(){
        print(id)
    }
    
    func createSquare(id:SquareName, color: UIColor) {
        let square = Square(frame: CGRect.zero, id: id, color: color)
        square.layer.borderWidth = 1.5
        square.id = id
        square.backgroundColor = color
        square.translatesAutoresizingMaskIntoConstraints = false
        square.isUserInteractionEnabled = true
        square.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Square.printId)))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


