//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by 강민우 on 2022/12/19.
//

import UIKit

protocol LEDBoardSettingDelegate : AnyObject {
    func changedSetting(text : String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var brownButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    
    var textColor: UIColor = .blue
    var backgroundColor : UIColor = .brown
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.blueButton{
            self.changeTextColor(color: .blue)
            self.textColor = .blue
          } else if sender == self.redButton{
            self.changeTextColor(color: .red)
              self.textColor = .red
          } else {
            self.changeTextColor(color: .purple)
              self.textColor = .purple
          }
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.brownButton{
            self.changeBackgroundColor(color: .brown)
            self.backgroundColor = .brown
          } else if sender == self.yellowButton{
            self.changeBackgroundColor(color: .yellow)
            self.backgroundColor = .yellow
          } else {
            self.changeBackgroundColor(color: .green)
            self.backgroundColor = .green
          }
        
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(text: self.textField.text,
                                      textColor: textColor,
                                      backgroundColor: backgroundColor)
        self.navigationController?.popViewController(animated: true)
    }
    
    private func changeTextColor(color: UIColor) {
        self.blueButton.alpha = color == UIColor.blue ? 1 : 0.3
        self.redButton.alpha = color == UIColor.red ? 1 : 0.3
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.3
    }
    
    private func changeBackgroundColor(color : UIColor) {
        self.brownButton.alpha = color == UIColor.brown ? 1 : 0.3
        self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.3
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.3
    }
}
