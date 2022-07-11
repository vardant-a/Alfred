//
//  User.swift
//  Alfred
//
//  Created by Алексей on 11.07.2022.
//

import QuartzCore

struct User {
    var email: String = ""
    var password: String
    var number: String = ""
    var person: Person
}

struct Person {
    var firstName: String
    var lastName: String
    var animal: Animal
}

struct Animal {
    let name: String
    let kind: String
    var age: Int
    
}
