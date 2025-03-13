//
//  ResultsViewController.swift
//  Trivia
//
//  Created by Jessica Sang on 3/12/25.
//

import Foundation
import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!

    var finalScore: Int?
    var totalQuestions: Int?
    var gameManager: GameManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let score = finalScore, let total = totalQuestions {
            scoreLabel.text = "You got \(score) out of \(total) correct!"
        }
    }

    @IBAction func restartGame(_ sender: UIButton) {
        gameManager?.restartGame()
        print("Restart button clicked - Dismissing ResultsViewController")
        dismiss(animated: true) {
                NotificationCenter.default.post(name: NSNotification.Name("RestartGame"), object: nil)
            }

    }
}
