//
//  Task.swift
//  To Do List project
//
//  Created by Jaouher Bejaoui  on 7/7/2021.
//

import Foundation



enum Priority : Int{
    case high
    case medium
    case low
}

struct Task{   
    let title : String
    let priority : Priority
    
}
