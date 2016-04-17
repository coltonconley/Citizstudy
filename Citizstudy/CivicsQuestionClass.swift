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
    var numAnswers: Int
    
    init(newQuestion: String, newAnswers: [String], newNumAnswers: Int)
    {
        question = newQuestion
        answers = newAnswers
        numAnswers = newNumAnswers
    }
    
    func getQuestion () -> String
    {
        return question
    }
    
    func getAnswers () -> [String]
    {
        return answers
    }
    
    func getNumAnswers () -> Int
    {
        return numAnswers
    }
}
