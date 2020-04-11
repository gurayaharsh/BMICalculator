

import UIKit

struct Calcultor {
    
    var bmi : BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        
        let bmiVal = 703 * weight / pow(height,2)
        print(bmiVal)
        
        if bmiVal < 18.5 {
            bmi = BMI(value: bmiVal, advice: "Eat more!", colour: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) )
        }
        else if bmiVal < 24.9 {
            bmi = BMI(value: bmiVal, advice: "Fit!", colour: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1) )
        }
        else{
            bmi = BMI(value: bmiVal, advice: "Eat less!", colour: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1) )
        }
        
      
    }
    
    func getBMIValue() -> String  {
        return  String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.colour ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)   }
    
    
    
    
}
