//
//  Question.swift
//  MultipleChoiceQuizApp
//
//  Created by Mac on 10/07/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation
struct  Question {
    let text: String
    var options: [Any]
    var correctAnswer: Any
    init(q: String, a: [Any], correctAnswer: Any) {
        text = q
        options = a
        self.correctAnswer = correctAnswer
    }
}
