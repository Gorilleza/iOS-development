//
//  ViewController.swift
//  Calculator
//
//  Created by Eziz on 20.05.25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var sexSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var activitySegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ageTextField.keyboardType = .numberPad
                heightTextField.keyboardType = .numberPad
                weightTextField.keyboardType = .numberPad

    }
    
    @IBAction func calculateTapped(_ sender: Any) {
        
            guard let ageText = ageTextField.text, !ageText.isEmpty,
                  let heightText = heightTextField.text, !heightText.isEmpty,
                  let weightText = weightTextField.text, !weightText.isEmpty else {
                resultsLabel.text = "Пожалуйста, заполните все поля!"
                return
            }
            
            // Преобразуем текст в числа
            guard let age = Int(ageText),
                  let height = Double(heightText),
                  let weight = Double(weightText) else {
                resultsLabel.text = "Введите корректные числа!"
                return
            }
            
            // Рассчитываем ИМТ (Индекс Массы Тела)
            let heightInMeters = height / 100
            let bmi = weight / (heightInMeters * heightInMeters)
            
            // Рассчитываем BMR (Базальный Метаболизм)
            var bmr: Double
            if sexSegmentedControl.selectedSegmentIndex == 0 { // Мужчина
                bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * Double(age))
            } else { // Женщина
                bmr = 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * Double(age))
            }
            
            // Учитываем уровень активности
            var activityMultiplier: Double
            switch activitySegmentedControl.selectedSegmentIndex {
            case 0: activityMultiplier = 1.2      // Минимальная активность
            case 1: activityMultiplier = 1.375    // 1-3 тренировки
            case 2: activityMultiplier = 1.55     // 3-5 тренировок
            case 3: activityMultiplier = 1.725    // 6-7 тренировок
            default: activityMultiplier = 1.2
            }
            
            let dailyCalories = bmr * activityMultiplier
            
            // Выводим результат
            resultsLabel.text = """
            Вам нужно \(Int(dailyCalories)) ккал в день.
            Ваш ИМТ: \(String(format: "%.1f", bmi)).
            """
        }
    }

