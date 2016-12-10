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
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
        let board = Board(frame: CGRect.zero, view: mainView)
        mainView.addSubview(board)
        
    }
    
    
    
}
    
