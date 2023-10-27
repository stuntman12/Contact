//
//  Contact.swift
//  Contact
//
//  Created by Даниил on 24.10.2023.
//

import Foundation


struct Person {
    var name: String
    var female: String
    var email: String
    var number: String
    var fullName: String {
        name + " " + female
    }
    
        
    }

final class DataStore {
    let name = ["Zavet", "Daniil", "Dmitry", "Tim", "Artem", "Milan", "Milso"]
    let female = ["Khabarov", "Ivanov", "Cook", "Smirnov", "Petrov", "Kapustin", "Sidorov"]
    let email = ["eur3@ri.com",
                 "743yrw@OP.RY",
                 "datohautroure-7910@yopmail.com",
                 "yoinnupeixopoi-1294@yopmail.com",
                 "jeitroreurobro-8319@yopmail.com",
                 "dauttussomammo-7853@yopmail.com",
                 "vafatrefrelo-5578@yopmail.com"
    ]
    let numberIphone = [ "8(38)537-56-44",
                         "108(304)948-63-18",
                         "396(347)853-49-73",
                         "8(62)181-57-88",
                         "762(2607)850-20-00",
                         "18(808)904-68-34",
                         "96(23)981-59-46"
                         ]
                         }

extension Person {
    static func getPerson() -> [Person]{
        
        [
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!),
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!),
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!),
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!),
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!),
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!),
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!),
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!),
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!),
            Person(name: DataStore().name.randomElement()!,
                   female: DataStore().female.randomElement()!,
                   email: DataStore().email.randomElement()!,
                   number: DataStore().numberIphone.randomElement()!)
        ]
    }
}
