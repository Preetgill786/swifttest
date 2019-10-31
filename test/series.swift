//
//  series.swift
//  test
//
//  Created by MacStudent on 2019-10-24.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Series: Collection{
    
    
    
    var noOfEpisodes = 0
    var noOfEpisodes_: Int{
        
        get{
            
            return noOfEpisodes
            
        }set{
            
            noOfEpisodes = newValue
            
        }
        
    }
    
    var noOfChannels = 0
    var noOfChannels_: Int{
        
        get{
            
            return noOfChannels
            
        }set{
            
            noOfChannels = newValue
            
        }
        
    }
    
    
    
    func inco() -> Double {
        
        return 0.0
        
    }
    
    
    
    init(no: Int,title: String,year:Int,noOfEpisodes:Int,noOfChannels: Int) {
        
        super.init(no: no, title:title, year: year)
        
        self.noOfEpisodes = noOfEpisodes
        
        self.noOfChannels = noOfChannels
        
    }
    
    
    override  func totalincome() -> Double {
        
        var total: Double = (50 * Double(noOfEpisodes)) * Double(noOfChannels)
        
        return total
        
    }
    
    
    
    override func display() -> String {
        
        return "no: \(no)" + "\n title : \(title)" + "\n year: \(year)" + "\n no of episodes: \(noOfEpisodes)" + "\n no of channels: \(noOfChannels)"
        
    }
    
    
    
    
    
}
