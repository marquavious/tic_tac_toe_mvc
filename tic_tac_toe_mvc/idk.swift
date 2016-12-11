//
//  idk.swift
//  tic_tac_toe_mvc
//
//  Created by Marquavious on 12/11/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

//
//
//func makeSquares() {
//    let a = Square.createSquare(id: .tl, color: .red, addOnScreen: true)
//    let b = Square.createSquare(id: .tm, color: .blue, addOnScreen: true)
//    let c = Square.createSquare(id: .tr, color: .green, addOnScreen: true)
//    let d = Square.createSquare(id: .ml, color: .yellow, addOnScreen: true)
//    let e = squares.createSquare(id: .mm, color: .red, addOnScreen: true)
//    let f = squares.createSquare(id: .mr, color: .blue, addOnScreen: true)
//    let g = squares.createSquare(id: .bl, color: .green, addOnScreen: true)
//    let h = squares.createSquare(id: .bm, color: .yellow, addOnScreen: true)
//    let i = squares.createSquare(id: .br, color: .red, addOnScreen: true)
//    
//    squares += [a,b,c,d,e,f,g,h,i]
//    
//    createConstraints(square: a, placement: .top, width: 1/3, height: 1/3, masterView: self.masterView , subView: nil,subViewTop: nil)
//    createConstraints(square: b, placement: .top, width: 1/3, height: 1/3, masterView: self.masterView, subView: a,subViewTop: nil)
//    createConstraints(square: c,placement: .top, width: 1/3, height: 1/3, masterView: self.masterView, subView: b,subViewTop: nil)
//    createConstraints(square: d,placement: .middle, width: 1/3, height: 1/3, masterView: self.masterView, subView: nil,subViewTop: a)
//    createConstraints(square: e,placement: .middle, width: 1/3, height: 1/3, masterView: self.masterView, subView: d,subViewTop: b)
//    createConstraints(square: f,placement: .middle, width: 1/3, height: 1/3, masterView: self.masterView, subView: e,subViewTop: c)
//    createConstraints(square: g, placement: .bottom, width: 1/3, height: 1/3, masterView: self.masterView, subView: nil, subViewTop: d)
//    createConstraints(square: h, placement: .bottom, width: 1/3, height: 1/3, masterView: self.masterView, subView: g, subViewTop: e)
//    createConstraints(square: i, placement: .bottom, width: 1/3, height: 1/3, masterView: self.masterView, subView: h, subViewTop: f)
//    
//}
//
//

//
//func createConstraints(square: Square, placement: Square.Placement ,width:Float, height:Float, masterView: UIView, subView: Square?, subViewTop: Square?){
//    
//    switch placement {
//    case .top:
//        NSLayoutConstraint(item: square,
//                           attribute: .width,
//                           relatedBy: .equal,
//                           toItem: masterView,
//                           attribute: .width,
//                           multiplier: CGFloat(width),
//                           constant: 0).isActive=true
//        NSLayoutConstraint(item: square,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: masterView,
//                           attribute: .height,
//                           multiplier: CGFloat(height),
//                           constant: 0).isActive=true
//        
//        
//        NSLayoutConstraint(item: square,
//                           attribute: .top,
//                           relatedBy: .equal,
//                           toItem: masterView,
//                           attribute: .top,
//                           multiplier: 1,
//                           constant: 0).isActive=true
//        if subView == nil {
//            NSLayoutConstraint(item: square,
//                               attribute: .leading,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .leading,
//                               multiplier: 1,
//                               constant: 0).isActive=true
//        } else{
//            NSLayoutConstraint(item: square,
//                               attribute: .leading,
//                               relatedBy: .equal,
//                               toItem: subView,
//                               attribute: .trailing,
//                               multiplier: 1,
//                               constant: 0).isActive=true
//        }
//        break
//    case .middle:
//        NSLayoutConstraint(item: square,
//                           attribute: .width,
//                           relatedBy: .equal,
//                           toItem: masterView,
//                           attribute: .width,
//                           multiplier: CGFloat(width),
//                           constant: 0).isActive=true
//        NSLayoutConstraint(item: square,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: masterView,
//                           attribute: .height,
//                           multiplier: CGFloat(height),
//                           constant: 0).isActive=true
//        
//        
//        NSLayoutConstraint(item: square,
//                           attribute: .top,
//                           relatedBy: .equal,
//                           toItem: subViewTop,
//                           attribute: .bottom,
//                           multiplier: 1,
//                           constant: 0).isActive=true
//        if subView == nil {
//            NSLayoutConstraint(item: square,
//                               attribute: .leading,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .leading,
//                               multiplier: 1,
//                               constant: 0).isActive=true
//        } else{
//            NSLayoutConstraint(item: square,
//                               attribute: .leading,
//                               relatedBy: .equal,
//                               toItem: subView,
//                               attribute: .trailing,
//                               multiplier: 1,
//                               constant: 0).isActive=true
//        }
//        
//        break
//    case .bottom:
//        
//        NSLayoutConstraint(item: square,
//                           attribute: .width,
//                           relatedBy: .equal,
//                           toItem: masterView,
//                           attribute: .width,
//                           multiplier: CGFloat(width),
//                           constant: 0).isActive=true
//        NSLayoutConstraint(item: square,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: masterView,
//                           attribute: .height,
//                           multiplier: CGFloat(height),
//                           constant: 0).isActive=true
//        
//        
//        NSLayoutConstraint(item: square,
//                           attribute: .top,
//                           relatedBy: .equal,
//                           toItem: subViewTop,
//                           attribute: .bottom,
//                           multiplier: 1,
//                           constant: 0).isActive=true
//        if subView == nil {
//            NSLayoutConstraint(item: square,
//                               attribute: .leading,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .leading,
//                               multiplier: 1,
//                               constant: 0).isActive=true
//        } else{
//            NSLayoutConstraint(item: square,
//                               attribute: .leading,
//                               relatedBy: .equal,
//                               toItem: subView,
//                               attribute: .trailing,
//                               multiplier: 1,
//                               constant: 0).isActive=true
//        }
//        break
//    }
//}

