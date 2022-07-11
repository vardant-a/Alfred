//
//  User.swift
//  Alfred
//
//  Created by Алексей on 11.07.2022.
//

struct User {
    let login: String
    var password: String
    var person: Person
}

struct Person {
    var firstName: String
    var lastName: String
    var age: Int
    var currentCity: String
}
