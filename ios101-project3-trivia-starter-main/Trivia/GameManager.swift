//
//  GameManager.swift
//  Trivia
//
//  Created by Jessica Sang on 3/12/25.
//

import Foundation

class GameManager {
    private var questions: [Question] = [
        Question(question: "What is the capital of France?", options: ["Paris", "London", "Berlin", "Rome"], correctAnswer: "Paris"),
        Question(question: "Which planet is known as the Red Planet?", options: ["Earth", "Mars", "Jupiter", "Venus"], correctAnswer: "Mars"),
        Question(question: "What is 2 + 2?", options: ["3", "4", "5", "6"], correctAnswer: "4")
    ]
    
    private var currentQuestionIndex = 0
    private var score = 0
    
    var totalQuestions: Int {
        return questions.count
    }
    
    func getCurrentQuestion() -> Question? {
        return currentQuestionIndex < questions.count ? questions[currentQuestionIndex] : nil
    }
    
    func getCurrentQuestionIndex() -> Int {
        return currentQuestionIndex
    }

    func checkAnswer(_ answer: String) -> Bool {
        guard let currentQuestion = getCurrentQuestion() else { return false }
        if answer == currentQuestion.correctAnswer {
            score += 1
            return true
        }
        return false
    }
    
    func moveToNextQuestion() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            currentQuestionIndex += 1
        }
        print("Moved to Next Question - Current Index: \(currentQuestionIndex)")
    }

    
    func isGameOver() -> Bool {
        print("Checking if game is over - Current Index: \(currentQuestionIndex), Total Questions: \(questions.count)")
        return currentQuestionIndex >= questions.count
    }

    func getScore() -> Int {
        return score
    }
    
    func restartGame() {
        currentQuestionIndex = 0
        score = 0
        print("Game restarted - Current Index: \(currentQuestionIndex)")
    }

}
