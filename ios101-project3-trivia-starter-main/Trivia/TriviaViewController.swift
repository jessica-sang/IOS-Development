//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Jessica Sang on 3/12/25.
//

import Foundation
import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!

    private var gameManager = GameManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("TriviaViewController loaded")

        loadQuestion()
        NotificationCenter.default.addObserver(self, selector: #selector(restartGameReceived), name: NSNotification.Name("RestartGame"), object: nil)

    }

    private func loadQuestion() {
        guard let question = gameManager.getCurrentQuestion() else { return }

        print("Loading Question: \(gameManager.getCurrentQuestionIndex() + 1)")

        questionLabel.text = question.question
        progressLabel.text = "Question \(gameManager.getCurrentQuestionIndex() + 1) of \(gameManager.totalQuestions)"

        for (index, button) in answerButtons.enumerated() {
            button.setTitle(question.options[index], for: .normal)
            button.tag = index
        }
    }

    @IBAction func answerSelected(_ sender: UIButton) {
        guard let question = gameManager.getCurrentQuestion() else { return }
        
        let selectedAnswer = question.options[sender.tag]
        let isCorrect = gameManager.checkAnswer(selectedAnswer)

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.goToNextQuestion()
        }
    }

    private func goToNextQuestion() {
        gameManager.moveToNextQuestion()

        if gameManager.isGameOver() {
            print("Game Over - Navigating to ResultsViewController")
            performSegue(withIdentifier: "showResults", sender: nil)
        } else {
            loadQuestion()
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults",
           let resultsVC = segue.destination as? ResultsViewController {
            resultsVC.finalScore = gameManager.getScore()
            resultsVC.totalQuestions = gameManager.totalQuestions
            resultsVC.gameManager = gameManager
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear - Reloading first question")
        loadQuestion()
    }

    @objc func restartGameReceived() {
        print("Received RestartGame Notification - Reloading first question")
        loadQuestion()
    }

}
