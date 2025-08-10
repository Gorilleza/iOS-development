//
//  ViewController.swift
//  AreaCalculator
//
//  Created by Eziz on 20.05.25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var categorySegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var figureSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var sideATextField: UITextField!
    
    @IBOutlet weak var sideBTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryChanged(categorySegmentedControl)
    }
    
    @IBAction func categoryChanged(_ sender: UISegmentedControl) {
        figureSegmentedControl.removeAllSegments()
        
        if sender.selectedSegmentIndex == 0 {
            figureSegmentedControl.insertSegment(withTitle: "Прямоугольник", at: 0, animated: true)
            figureSegmentedControl.insertSegment(withTitle: "Квадрат", at: 1, animated: true)
            figureSegmentedControl.insertSegment(withTitle: "Параллелограмм", at: 2, animated: true)
        } else {
            figureSegmentedControl.insertSegment(withTitle: "Прямоугольный", at: 0, animated: true)
            figureSegmentedControl.insertSegment(withTitle: "Разносторонний", at: 1, animated: true)
        }
        
        figureSegmentedControl.selectedSegmentIndex = 0
    }

    @IBAction func calculateTapped(_ sender: UIButton) {
        guard let sideA = Double(sideATextField.text ?? ""),
              let sideBText = sideBTextField.text,
              let sideB = Double(sideBText) else {
            resultLabel.text = "Ошибка: введите числа!"
            return
        }
        
        var area: Double = 0
        
        if categorySegmentedControl.selectedSegmentIndex == 0 {
            // Четырехугольники
            switch figureSegmentedControl.selectedSegmentIndex {
            case 0: area = sideA * sideB                     // Прямоугольник
            case 1: area = sideA * sideA                     // Квадрат (sideB игнорируется)
            case 2: area = sideA * sideB                     // Параллелограмм
            default: break
            }
        } else {
            // Треугольники
            switch figureSegmentedControl.selectedSegmentIndex {
            case 0: area = (sideA * sideB) / 2               // Прямоугольный
            case 1: area = (sideA * sideB) / 2               // Разносторонний
            default: break
            }
        }
        
        resultLabel.text = "Площадь: \(String(format: "%.2f", area))"
    }
    
}

