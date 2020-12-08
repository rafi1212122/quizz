//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Rafi Aburachman on 19/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct quizBrain {
    let quiz = [
        question(text:"Apakah bumi bulat?",answer:"True"),
        question(text:"Apakah Jakarta ibukota?",answer:"True"),
        question(text:"Apakah bumi datar?",answer:"False")]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String {
        return quiz[questionNumber].answer
    }
    func getProgrss() -> Float {
        Float(questionNumber + 1) / Float(quiz.count)
    }
    func getScore() -> Int {
        return score
    }
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
        }
    }
    mutating func checkAnswer(userAnswer:String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score = 100
            return true
            
        }else{
            return false
            
        }
    }
}
