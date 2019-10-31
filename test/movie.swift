//
//  movie.swift
//  test
//
//  Created by MacStudent on 2019-10-24.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Movie:  Collection,collectProtocol{
    
    
    
    var cinema: [String] = []
    //getter and setter
    var cinema_: [String]{
        
        get{
            
            return cinema
            
        }set{
            
            cinema = newValue
            
        }
        
    }
    
    var income: [Double] = []
      //getter and setter
    var income_: [Double]{
        
        get{
            
            return income
            
        }set{
            
            income = newValue
            
        }
        
    }
    
    
    //get income funcion from collectProtocol
    func inco() -> Double {
        
        return 0.0
        
    }
    
    
    //initializer
    init(no: Int,title: String,year:Int,cinema: [String],income: [Double]) {
        
        super.init(no: no, title:title, year: year)
        
        self.cinema = cinema
        
        self.income = income
        
    }
    
    
  //override function totalincome to calculate the income of movie cinema
     override  func totalincome() -> Double {
        
        var totalMovieincome: Double = 0.0
        
        
        
        for money in income{
            
           totalMovieincome = totalMovieincome + (money - (money * 0.4))
            
        }
        
        return totalMovieincome
        
    }
    
    
    //override function display
    override func display() -> String {
        
	return "No: \(no)" + "\n Title : \(title)" + "\n Year: \(year)""
        
    }
    
    
    
    
    
}
