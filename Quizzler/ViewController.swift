//
//  ViewController.swift
//  Quizzler
//
//  Created by Breno Rezende on 23/07/2019.
//  Copyright (c) 2019 Brezende. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = QuestionService().questions
    var currentQuestionNumber: Int = 0
    var answeredCorrectly: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        
        let userAnswer = sender.tag == 1 ? true : false
        let correctAnswer = questions[currentQuestionNumber].correctAnswer
        
        checkAnswer(userAnswer: userAnswer, correctAnswer: correctAnswer)
    }
    
    func checkAnswer(userAnswer: Bool, correctAnswer: Bool) {
        if userAnswer == correctAnswer {
            showAlert(withTitle: "Correct", message: "You got it!", actionTitle: "Next") { (UIAlertAction) in
                self.answeredCorrectly += 1
                self.nextQuestion()
            }
        } else {
            showAlert(withTitle: "Wrong answer", message: "You failed!", actionTitle: "Next") { (UIAlertAction) in
                self.nextQuestion()
            }
        }
    }
    
    func nextQuestion() {
        
        if currentQuestionNumber < questions.count - 1 {
            currentQuestionNumber += 1
            updateUI()
        } else {
            showAlert(withTitle: "End of Quiz", message: "You got \(answeredCorrectly) questions right", actionTitle: "Start over") { (UIAlertAction) in
                self.startOver()
            }
        }
    }
    
    func updateUI() {
        questionLabel.text = questions[currentQuestionNumber].text
        let currentCount = currentQuestionNumber + 1
        progressLabel.text = "\(currentCount)/\(questions.count)"
        
        UIView.animate(withDuration: 0.2) {
            self.progressBar.frame.size.width = CGFloat(currentCount) * (self.view.frame.size.width / CGFloat(self.questions.count))
        }
    }
    
    func startOver() {
        currentQuestionNumber = 0
        answeredCorrectly = 0
        updateUI()
        print("Screen refreshed")
    }
    
    func showAlert(withTitle title: String, message: String, actionTitle: String, action: @escaping (UIAlertAction) -> Void) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: NSLocalizedString(actionTitle, comment: "Title of the alert button"), style: .default, handler: action)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
