//
//  Restaurant.swift
//  FoodPin
//
//  Created by Penguin on 2016/10/5.
//  Copyright © 2016年 Angel Chou. All rights reserved.
//

import Foundation

class Restaurant {
    var name = ""
    var type = ""
    var location = ""
    var image = ""
    var isVisited = false
    var phoneNumber = ""
    var rating = ""
    
    init(name:String, type:String, location:String, image:String, isVisited:Bool, phoneNumber:String){
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
        self.phoneNumber = phoneNumber
    }
}