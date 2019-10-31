//
//  collection.swift
//  test
//
//  Created by MacStudent on 2019-10-24.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
protocol collectProtocol {
    
    func inco() -> Double
    
    
    
}

class Collection {
    
    
    
    var no  = 0
     //getter and setter
    var no_: Int{
        
        get{
            
            return no
            
        }set{
            
            no = newValue
            
        }
        
    }
    
    var title = ""
     //getter and setter
    var title_: String{
        
        get{
            
            return title
            
        }set{
            
            title = newValue
            
        }
        
    }
    
    var year = 0
     //getter and setter
    var year_: Int{
        
        get{
            
            return year
            
        }set{
            
            year = newValue
            
        }
        
    }
    
    
    
    
    
    //Initializer
    
    init(no: Int,title: String,year:Int) {
        
        self.no = no
        
        self.title = title
        
        self.year = year
        
        
        
    }
    
    
   func totalincome() -> Double{
        
        return 0.0
        
    }
    
    func display() -> String {
        
        return ""
        
    }
    
}
