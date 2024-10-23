//
//  ViewController.swift
//  QuestionBotApp
//
//  Created by ibrahim erginoglu on 23.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var responseLabel: UILabel!
       @IBOutlet weak var questionTextField: UITextField!

       @IBAction func askButtonPressed(_ sender: UIButton) {
           let question = questionTextField.text ?? ""
           processQuestion(question)
           questionTextField.text = "" // Kullanıcı girdisini temizle
       }

       override func viewDidLoad() {
           super.viewDidLoad()
           responseLabel.text = "Ask me a question!"
       }

       func processQuestion(_ question: String) {
           let responses = [
               "Yes, definitely!",
               "No, not really.",
               "Maybe, who knows?",
               "I'm not sure, try again later.",
               "Absolutely!",
               "I wouldn't count on it."
           ]
           
           // Rastgele bir cevap seçelim
           let randomResponse = responses.randomElement() ?? "Hmm, I don't know."
           
           // Cevabı label'a yazdır
           responseLabel.text = randomResponse
       }


}

