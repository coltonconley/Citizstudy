//
//  100QuestionClass.swift
//  Citizstudy
//
//  Created by Colton Conley on 4/16/16.
//  Copyright © 2016 Jacob. All rights reserved.
//

import Foundation
import UIKit


class CivicsQuestion {
    
    var question: String
    var answers: [String]
    var front: Bool
    
    init(newQuestion: String, newAnswers: [String])
    {
        question = newQuestion
        answers = newAnswers
        front = true
    }
    
    func getQuestion () -> String
    {
        return question
    }
    
    func getAnswers () -> String
    {
        var answer: String = ""
        for i in answers {
            answer += i + "\n"
        }
        return answer
    }
    
    func getFirstCorrectAnswer() -> String
    {

        return answers[0]
    }
    
    
    func getAnswersArray () -> [String]
    {
        return answers
    }
    
    func getSide () -> Bool{
        return front
    }
    
    func changeSide()
    {
        front = !front
    }
    
}

