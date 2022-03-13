//
//  ViewController.swift
//  Seja Sincero
//
//  Created by Guilherme Aguirres on 12/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    @IBOutlet weak var noButtonTop: NSLayoutConstraint!
    @IBOutlet weak var noButtonRight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedYesButton(_ sender: Any) {
        titleLabel.text = "Eu sabia!!!"
        yesButton.isHidden = true
        noButton.isHidden = true
    }
    
    @IBAction func tappedNoButton(_ sender: UIButton) {
        noButtonTop.constant = CGFloat.random(in: view.bounds.origin.y...view.bounds.height-200)
        noButtonRight.constant = CGFloat.random(in: 0...view.bounds.width-150)
    }
    
}

