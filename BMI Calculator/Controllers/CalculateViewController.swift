

import UIKit

class CalculateViewController: UIViewController {
    
    var calcultor = Calcultor()
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let val = sender.value
        let height = String(format: "%.2f", val)
        heightLabel.text = "\(height)"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let val = sender.value
        let weight = String(format: "%.0f", val)
        weightLabel.text = "\(weight)"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
       
        let height = Float(heightLabel.text!)!
        let weight = Float(weightLabel.text!)!
        
        calcultor.calculateBMI(height, weight)
        
        self.performSegue(withIdentifier: "displayResult", sender: self)
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "displayResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calcultor.getBMIValue()
            destinationVC.advice = calcultor.getAdvice()
            destinationVC.color = calcultor.getColor()
        }
    }
    
}

