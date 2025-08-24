//
//  ViewController.swift
//  Lab0
//
//  Created by Nishat Shaneen on 8/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameText: UITextField!
    @IBOutlet weak var LastNameText: UITextField!
    @IBOutlet weak var SchoolText: UITextField!
    
    @IBOutlet weak var petsText: UILabel!
    @IBOutlet weak var Stepper: UIStepper!
    @IBOutlet weak var Year: UISegmentedControl!
    @IBOutlet weak var Switch: UISwitch!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
          petsText.text = "\(Int(sender.value))"
      }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
            // Lets us choose the title we have selected from the segmented control
            // In our example that is whether it is first, second, third or forth
            let years = Year.titleForSegment(at: Year.selectedSegmentIndex)
            
            // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
            let introduction = "My name is \(FirstNameText.text!) \(LastNameText.text!) and I attend \(SchoolText.text!). I am currently in my \(years!) year and I own \(petsText.text!) pets. It is \(Switch.isOn) that I want more pets."
            
        // Creates the alert where we pass in our message, which our introduction.
               let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
               // A way to dismiss the box once it pops up
               let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
               
               // Passing this action to the alert controller so it can be dismissed
               alertController.addAction(action)
               
               present(alertController, animated: true, completion: nil)
        
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

