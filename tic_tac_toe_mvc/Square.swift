//
//  Square.swift
//  tic_tac_toe_mvc
//
//  Created by Marquavious on 12/10/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class Square: UIView {
    
    var masterView: UIView!
    var squareId: SquareName!
    
    init(frame: CGRect, masterView: UIView, squareId: SquareName) {
        super.init(frame: frame)
        self.frame = frame
        self.masterView = masterView
        self.squareId = squareId
    }
    
    func printId(){
        print(squareId.hashValue)
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
    
//    func makeSquares() {
//        let a = createSquare(id: .tl, color: .red, addOnScreen: true)
//        let b = createSquare(id: .tm, color: .blue, addOnScreen: true)
//        let c = createSquare(id: .tr, color: .green, addOnScreen: true)
//        let d = createSquare(id: .ml, color: .yellow, addOnScreen: true)
//        let e = createSquare(id: .mm, color: .red, addOnScreen: true)
//        let f = createSquare(id: .mr, color: .blue, addOnScreen: true)
//        let g = createSquare(id: .bl, color: .green, addOnScreen: true)
//        let h = createSquare(id: .bm, color: .yellow, addOnScreen: true)
//        let i = createSquare(id: .br, color: .red, addOnScreen: true)
//        
//        createConstraints(square: a, placement: .top, width: 1/3, height: 1/3, masterView: self.masterView , subView: nil,subViewTop: nil)
//        createConstraints(square: b, placement: .top, width: 1/3, height: 1/3, masterView: self.masterView, subView: a,subViewTop: nil)
//        createConstraints(square: c,placement: .top, width: 1/3, height: 1/3, masterView: self.masterView, subView: b,subViewTop: nil)
//        createConstraints(square: d,placement: .middle, width: 1/3, height: 1/3, masterView: self.masterView, subView: nil,subViewTop: a)
//        createConstraints(square: e,placement: .middle, width: 1/3, height: 1/3, masterView: self.masterView, subView: d,subViewTop: b)
//        createConstraints(square: f,placement: .middle, width: 1/3, height: 1/3, masterView: self.masterView, subView: e,subViewTop: c)
//        createConstraints(square: g, placement: .bottom, width: 1/3, height: 1/3, masterView: self.masterView, subView: nil, subViewTop: d)
//        createConstraints(square: h, placement: .bottom, width: 1/3, height: 1/3, masterView: self.masterView, subView: g, subViewTop: e)
//        createConstraints(square: i, placement: .bottom, width: 1/3, height: 1/3, masterView: self.masterView, subView: h, subViewTop: f)
//        
//    }
    
    func createConstraints(square: Square, placement: Square.Placement ,width:Float, height:Float, masterView: UIView, subView: Square?, subViewTop: Square?){
        
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
    
//    func createSquare(id:SquareName, color: UIColor, addOnScreen:Bool) -> Square {
//        let square = UIView(frame: CGRect.zero, masterView: masterView, squareId: id)
//        square.layer.borderWidth = 1.5
//        square.squareId = id
//        square.backgroundColor = color
//        square.translatesAutoresizingMaskIntoConstraints = false
//        square.isUserInteractionEnabled = true
//        square.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Square.printId)))
//        if addOnScreen{
//            masterView.addSubview(square)
//        } else {
//            
//        }
//        return square
//    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
