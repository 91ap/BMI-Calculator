//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by apat on 2/22/25.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    func getBMIValue() -> String {
        let roundedBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return roundedBMI
    }

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more food", color: .systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit ay eff", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat lesss", color: .red)
        }
    }
    
    func getAdvice() -> String {
       
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.systemBlue
    }
}
