//
//  ViewController.swift
//  Animations
//
//  Created by АХМЕДОВ НИКОЛАЙ on 02/11/2022.
//  Copyright © 2022 Ahmedov Nikolay. All rights reserved.
//

import TransitionButton
import UIKit

class ViewController: UIViewController {

    // loading and transition animation
    let button = TransitionButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.center = view.center
        button.backgroundColor = .systemPink
        button.setTitle("Spinner", for: .normal)
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.spinnerColor = .white
        
        view.addSubview(button)
    }
    @objc func didTapButton() {
        button.startAnimation()
        
        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
            self.button.stopAnimation(animationStyle: .normal, revertAfterDelay: 1){
                DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                let vc = SeconfViewController()
                self.present(vc, animated: true)
                
                self.present(vc, animated: true)
                }
                
            }
        }
    }
}

class SeconfViewController:CustomTransitionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
    }
    
}

