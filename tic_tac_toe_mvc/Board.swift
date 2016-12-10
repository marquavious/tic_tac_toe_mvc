//
//  Board.swift
//  tic_tac_toe_mvc
//
//  Created by Marquavious on 12/9/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class Board: UIView {
    
    var masterView: UIView!
    var squareId: SquareName!

    init(frame: CGRect, masterView: UIView, squareId: SquareName) {
        super.init(frame: frame)
        self.frame = frame
        self.masterView = masterView
        self.squareId = squareId
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func printId(){
        print(squareId)
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
    
//    enum SquareName: String {
//        case tr = "tr"
//        case tm = "tm"
//        case tl = "tl"
//        case mr = "mr"
//        case mm = "mm"
//        case ml = "ml"
//        case bl = "bl"
//        case bm = "bm"
//        case br = "br"
//        case main = "main"
//    }

    func makeBoard() {
        let a = createSquare(id: .tl, color: .white, addOnScreen: true)
        let b = createSquare(id: .tm, color: .white, addOnScreen: true)
        let c = createSquare(id: .tr, color: .white, addOnScreen: true)
        let d = createSquare(id: .ml, color: .white, addOnScreen: true)
        let e = createSquare(id: .mm, color: .white, addOnScreen: true)
        let f = createSquare(id: .mr, color: .white, addOnScreen: true)
        let g = createSquare(id: .bl, color: .white, addOnScreen: true)
        let h = createSquare(id: .bm, color: .white, addOnScreen: true)
        let i = createSquare(id: .br, color: .white, addOnScreen: true)
        
        createConstraints(square: a, placement: .top, width: 1/3, height: 1/3, masterView: self , subView: nil,subViewTop: nil)
        createConstraints(square: b, placement: .top, width: 1/3, height: 1/3, masterView: self, subView: a,subViewTop: nil)
        createConstraints(square: c,placement: .top, width: 1/3, height: 1/3, masterView: self, subView: b,subViewTop: nil)
        createConstraints(square: d,placement: .middle, width: 1/3, height: 1/3, masterView: self, subView: nil,subViewTop: a)
        createConstraints(square: e,placement: .middle, width: 1/3, height: 1/3, masterView: self, subView: d,subViewTop: b)
        createConstraints(square: f,placement: .middle, width: 1/3, height: 1/3, masterView: self, subView: e,subViewTop: c)
        createConstraints(square: g, placement: .bottom, width: 1/3, height: 1/3, masterView: self, subView: nil, subViewTop: d)
        createConstraints(square: h, placement: .bottom, width: 1/3, height: 1/3, masterView: self, subView: g, subViewTop: e)
        createConstraints(square: i, placement: .bottom, width: 1/3, height: 1/3, masterView: self, subView: h, subViewTop: f)
        
    }
    
    func createConstraints(square: Board, placement: Board.Placement ,width:Float, height:Float, masterView: UIView, subView: Board?, subViewTop: Board?){
        
        switch placement {
        case .top:
            NSLayoutConstraint(item: square,
                               attribute: .width,
                               relatedBy: .equal,
                               toItem: masterView,
                               attribute: .width,
                               multiplier: CGFloat(width),
                               constant: 0).isActive=true
            NSLayoutConstraint(item: square,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: masterView,
                               attribute: .height,
                               multiplier: CGFloat(height),
                               constant: 0).isActive=true
            
            
            NSLayoutConstraint(item: square,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: masterView,
                               attribute: .top,
                               multiplier: 1,
                               constant: 0).isActive=true
            if subView == nil {
                NSLayoutConstraint(item: square,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: masterView,
                                   attribute: .leading,
                                   multiplier: 1,
                                   constant: 0).isActive=true
            } else{
                NSLayoutConstraint(item: square,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: subView,
                                   attribute: .trailing,
                                   multiplier: 1,
                                   constant: 0).isActive=true
            }
            break
        case .middle:
            NSLayoutConstraint(item: square,
                               attribute: .width,
                               relatedBy: .equal,
                               toItem: masterView,
                               attribute: .width,
                               multiplier: CGFloat(width),
                               constant: 0).isActive=true
            NSLayoutConstraint(item: square,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: masterView,
                               attribute: .height,
                               multiplier: CGFloat(height),
                               constant: 0).isActive=true
            
            
            NSLayoutConstraint(item: square,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: subViewTop,
                               attribute: .bottom,
                               multiplier: 1,
                               constant: 0).isActive=true
            if subView == nil {
                NSLayoutConstraint(item: square,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: masterView,
                                   attribute: .leading,
                                   multiplier: 1,
                                   constant: 0).isActive=true
            } else{
                NSLayoutConstraint(item: square,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: subView,
                                   attribute: .trailing,
                                   multiplier: 1,
                                   constant: 0).isActive=true
            }
            
            break
        case .bottom:
            
            NSLayoutConstraint(item: square,
                               attribute: .width,
                               relatedBy: .equal,
                               toItem: masterView,
                               attribute: .width,
                               multiplier: CGFloat(width),
                               constant: 0).isActive=true
            NSLayoutConstraint(item: square,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: masterView,
                               attribute: .height,
                               multiplier: CGFloat(height),
                               constant: 0).isActive=true
            
            
            NSLayoutConstraint(item: square,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: subViewTop,
                               attribute: .bottom,
                               multiplier: 1,
                               constant: 0).isActive=true
            if subView == nil {
                NSLayoutConstraint(item: square,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: masterView,
                                   attribute: .leading,
                                   multiplier: 1,
                                   constant: 0).isActive=true
            } else{
                NSLayoutConstraint(item: square,
                                   attribute: .leading,
                                   relatedBy: .equal,
                                   toItem: subView,
                                   attribute: .trailing,
                                   multiplier: 1,
                                   constant: 0).isActive=true
            }
            break
        }
    }
    
    func createSquare(id:SquareName, color: UIColor, addOnScreen:Bool) -> Board {
        let square = Board(frame: CGRect.zero, masterView: masterView, squareId: id)
        square.layer.borderWidth = 1.5
        square.squareId = id
        square.backgroundColor = color
        square.translatesAutoresizingMaskIntoConstraints = false
        square.isUserInteractionEnabled = true
        square.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Board.printId)))
        if addOnScreen{
            masterView.addSubview(square)
        } else {
            
        }
        return square
    }
}




