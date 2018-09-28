
// Created on: 28-Sept-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program calculates the price of pizza

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let diameterLabel = UILabel()
    let diameterTextField = UITextField()
    let calcuateButton = UIButton()
    let priceLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Calcuate the price of pizza"
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        diameterLabel.text = "Enter diameter"
        diameterLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(diameterLabel)
        diameterLabel.translatesAutoresizingMaskIntoConstraints = false
        diameterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        diameterLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        
        diameterTextField.borderStyle = UITextBorderStyle.roundedRect
        diameterTextField.placeholder = "In cm   "
        view.addSubview(diameterTextField)
        diameterTextField.translatesAutoresizingMaskIntoConstraints = false
        diameterTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150).isActive = true
        diameterTextField.bottomAnchor.constraint(equalTo: diameterLabel.topAnchor, constant: 27).isActive = true
        
        calcuateButton.setTitle("Calculate", for: UIControlState.normal)
        calcuateButton.setTitleColor(.blue, for: .normal)
        calcuateButton.addTarget(self, action: #selector(calculateCircumference), for: .touchUpInside)
        view.addSubview(calcuateButton)
        calcuateButton.translatesAutoresizingMaskIntoConstraints = false
        calcuateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        calcuateButton.topAnchor.constraint(equalTo: diameterLabel.bottomAnchor, constant: 20).isActive = true
        
        priceLabel.text = nil
        priceLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        priceLabel.topAnchor.constraint(equalTo: calcuateButton.bottomAnchor, constant: 20).isActive = true
    }
    @objc func calculateCircumference() {
        // calculate the area and perimeter 
        
        //labour cost is $0.75/pizza, regardless of size
        let labourCost : Double = 0.75
        //rent is $1.0/pizza, regardless of size
        let rent : Double = 1.00
        //HST is 13%
        let HST : Double = 1.13
        
        let diameter : Double = Double(diameterTextField.text!)!
        
        let materialCost : Double = 0.50 * diameter
        
        let price : Double = (labourCost+rent+materialCost) * HST
        
        priceLabel.text = String(format: "The price is $%.02f", price)
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
