//
//  ViewController.swift
//  CrossGame
//
//  Created by АХМЕДОВ НИКОЛАЙ on 14/11/2022.
//  Copyright © 2022 Ahmedov Nikolay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var buttons: [UIButton]!
    var board = [String]()
    var currentPlayer = ""
    
    var rules = [[0,1,2],[3,4,5],
                 [6,7,8],[0,3,6],
                 [1,4,7],[2,5,8],
                 [0,4,8],[2,4,6]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBoard()
        print(board)
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        let index = buttons.index(of: sender)!
        
        if !board[index].isEmpty {
            return
        }
        
        if currentPlayer == "X" {
            sender.setTitle("X", for: .normal)
            currentPlayer = "O"
            board[index] = "X"
        }else{
            sender.setTitle("O", for: .normal)
            currentPlayer = "X"
            board[index] = "O"
        }
        whoWins()
    }
    func whoWins() {
        for rule in rules {
            let playerat0 = board[rule[0]]
            let playerat1 = board[rule[1]]
            let playerat2 = board[rule[2]]
            
            if playerat0 == playerat1,
            playerat1 == playerat2,
                !playerat0.isEmpty {
                print("Winner is \(playerat0)")
            }
        }
    }
    func loadBoard() {
        for i in 0..<buttons.count {
            board.append("")
        }
    }
}

