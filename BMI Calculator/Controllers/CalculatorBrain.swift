//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Wang, Steven on 7/26/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / (height * height)
        
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Normal weight", color: .green)
        case 24.9...Float.infinity:
            bmi = BMI(value: bmiValue, advice: "Overweight!", color: .red)
        default:
            bmi = BMI(value: 0.0, advice: "Something went wrong while calculating bmi!", color: .black)
        }

    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Something went wrong (nil adivce)"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
