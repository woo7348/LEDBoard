//
//  ViewController.swift
//  LEDBoard
//
//  Created by 강민우 on 2022/12/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contentsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow
    }


}

