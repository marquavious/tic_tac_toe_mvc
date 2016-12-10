//
//  Extensions.swift
//  Custom View
//
//  Created by mitchell hudson on 12/9/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import Foundation
import UIKit

extension CALayer {
    
    func addBorder(edge: UIRectEdge, color: CGColor, thickness: CGFloat) {
        
        let border = CALayer()
        
        switch edge {
        case UIRectEdge.top:
            border.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: thickness)
            break
        case UIRectEdge.bottom:
            border.frame = CGRect(x: 0, y: self.frame.height - thickness, width: self.frame.width, height: thickness)
            break
        case UIRectEdge.left:
            border.frame = CGRect(x: 0, y: 0, width: thickness, height: self.frame.height)
            break
        case UIRectEdge.right:
            border.frame = CGRect(x: self.frame.width - thickness, y: 0, width: thickness, height: self.frame.height)
            break
        default:
            break
        }
        
        border.backgroundColor = color
        
        self.addSublayer(border)
    }
    
}

//extension NSLayoutAnchor {
//    
//    func createConstraints(square: Board, placement: Board.Placement ,width:Float, height:Float, masterView: UIView, subView: Board?, subViewTop: Board?){
//        
//        switch placement {
//        case .top:
//            NSLayoutConstraint(item: square,
//                               attribute: .width,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .width,
//                               multiplier: CGFloat(width),
//                               constant: 0).isActive=true
//            NSLayoutConstraint(item: square,
//                               attribute: .height,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .height,
//                               multiplier: CGFloat(height),
//                               constant: 0).isActive=true
//            
//            
//            NSLayoutConstraint(item: square,
//                               attribute: .top,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .top,
//                               multiplier: 1,
//                               constant: 0).isActive=true
//            if subView == nil {
//                NSLayoutConstraint(item: square,
//                                   attribute: .leading,
//                                   relatedBy: .equal,
//                                   toItem: masterView,
//                                   attribute: .leading,
//                                   multiplier: 1,
//                                   constant: 0).isActive=true
//            } else{
//                NSLayoutConstraint(item: square,
//                                   attribute: .leading,
//                                   relatedBy: .equal,
//                                   toItem: subView,
//                                   attribute: .trailing,
//                                   multiplier: 1,
//                                   constant: 0).isActive=true
//            }
//            break
//        case .middle:
//            NSLayoutConstraint(item: square,
//                               attribute: .width,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .width,
//                               multiplier: CGFloat(width),
//                               constant: 0).isActive=true
//            NSLayoutConstraint(item: square,
//                               attribute: .height,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .height,
//                               multiplier: CGFloat(height),
//                               constant: 0).isActive=true
//            
//            
//            NSLayoutConstraint(item: square,
//                               attribute: .top,
//                               relatedBy: .equal,
//                               toItem: subViewTop,
//                               attribute: .bottom,
//                               multiplier: 1,
//                               constant: 0).isActive=true
//            if subView == nil {
//                NSLayoutConstraint(item: square,
//                                   attribute: .leading,
//                                   relatedBy: .equal,
//                                   toItem: masterView,
//                                   attribute: .leading,
//                                   multiplier: 1,
//                                   constant: 0).isActive=true
//            } else{
//                NSLayoutConstraint(item: square,
//                                   attribute: .leading,
//                                   relatedBy: .equal,
//                                   toItem: subView,
//                                   attribute: .trailing,
//                                   multiplier: 1,
//                                   constant: 0).isActive=true
//            }
//            
//            break
//        case .bottom:
//            
//            NSLayoutConstraint(item: square,
//                               attribute: .width,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .width,
//                               multiplier: CGFloat(width),
//                               constant: 0).isActive=true
//            NSLayoutConstraint(item: square,
//                               attribute: .height,
//                               relatedBy: .equal,
//                               toItem: masterView,
//                               attribute: .height,
//                               multiplier: CGFloat(height),
//                               constant: 0).isActive=true
//            
//            
//            NSLayoutConstraint(item: square,
//                               attribute: .top,
//                               relatedBy: .equal,
//                               toItem: subViewTop,
//                               attribute: .bottom,
//                               multiplier: 1,
//                               constant: 0).isActive=true
//            if subView == nil {
//                NSLayoutConstraint(item: square,
//                                   attribute: .leading,
//                                   relatedBy: .equal,
//                                   toItem: masterView,
//                                   attribute: .leading,
//                                   multiplier: 1,
//                                   constant: 0).isActive=true
//            } else{
//                NSLayoutConstraint(item: square,
//                                   attribute: .leading,
//                                   relatedBy: .equal,
//                                   toItem: subView,
//                                   attribute: .trailing,
//                                   multiplier: 1,
//                                   constant: 0).isActive=true
//            }
//            break
//            
//        }
//    }
//
//}
