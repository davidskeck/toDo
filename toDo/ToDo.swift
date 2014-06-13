//
//  ToDo.swift
//  toDo
//
//  Created by David Keck on 6/10/14.
//  Copyright (c) 2014 David Keck. All rights reserved.
//

import UIKit

var toDo:ToDo = ToDo()

struct task {
    var name = "unnamed"
    var desc = "none"
}

class ToDo: NSObject {
    
    var tasks = task[]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
}
