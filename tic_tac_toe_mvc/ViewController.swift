//
//  ViewController.swift
//  tic_tac_toe_mvc
//
//  Created by Marquavious on 12/9/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!
    
    var board: Board!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layoutIfNeeded()
        board = Board(frame: CGRect.zero)
        mainView.addSubview(board)
        board.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        board.bottomAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true
        board.leadingAnchor.constraint(equalTo: mainView.leadingAnchor).isActive = true
        board.trailingAnchor.constraint(equalTo: mainView.trailingAnchor).isActive = true
        
//        makeSquares()
        
        let a = createSquare(id: .tl, color: .red)
        let b = createSquare(id: .tm, color: .red)
        let c = createSquare(id: .tr, color: .red)
        let d = createSquare(id: .ml, color: .red)
        let e = createSquare(id: .mm, color: .red)
        let f = createSquare(id: .mr, color: .red)
        let g = createSquare(id: .bl, color: .green)
        let h = createSquare(id: .bm, color: .yellow)
        let i = createSquare(id: .br, color: .red)
        
        board.addSubview(a)
        board.addSubview(b)
        board.addSubview(c)
        board.addSubview(d)
        board.addSubview(e)
        board.addSubview(f)
        board.addSubview(g)
        board.addSubview(h)
        board.addSubview(i)
        
        createConstraints(square: a, placement: .top, width: 1/3, height: 1/3, masterView: board , subView: nil,subViewTop: nil)
        createConstraints(square: b, placement: .top, width: 1/3, height: 1/3, masterView: board, subView: a,subViewTop: nil)
        createConstraints(square: c,placement: .top, width: 1/3, height: 1/3, masterView: board, subView: b,subViewTop: nil)
        createConstraints(square: d,placement: .middle, width: 1/3, height: 1/3, masterView: board, subView: nil,subViewTop: a)
        createConstraints(square: e,placement: .middle, width: 1/3, height: 1/3, masterView: board, subView: d,subViewTop: b)
        createConstraints(square: f,placement: .middle, width: 1/3, height: 1/3, masterView: board, subView: e,subViewTop: c)
        createConstraints(square: g, placement: .bottom, width: 1/3, height: 1/3, masterView: board, subView: nil, subViewTop: d)
        createConstraints(square: h, placement: .bottom, width: 1/3, height: 1/3, masterView: board, subView: g, subViewTop: e)
        createConstraints(square: i, placement: .bottom, width: 1/3, height: 1/3, masterView: board , subView: h, subViewTop: f)
        
    }
    
    func createSquare(id: Square.SquareName, color: UIColor) -> Square{
        let square = Square(frame: CGRect.zero, id: id, color: color)
        square.layer.borderWidth = 1.5
        square.id = id
        square.backgroundColor = color
        square.translatesAutoresizingMaskIntoConstraints = false
        square.isUserInteractionEnabled = true
        return square
    }
    
    func createConstraints(square: Square, placement: Square.Placement ,width:Float, height:Float, masterView: Board, subView: Square?, subViewTop: Square?){
    
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
    
    enum Placement {
        case top
        case middle
        case bottom
    }
   
}
    
