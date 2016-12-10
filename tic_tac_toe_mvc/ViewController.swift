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
        addBoard()
    }
    
    func addBoard(){
        let frame = CGRect(x: 0, y: 100, width: self.view.frame.width, height: self.view.frame.width)
        let board = Board(frame: frame, masterView: self.view, squareId: .main)
        view.addSubview(board)
        board.makeBoard()

    }
}
    
