//
//  main.swift
//  test
//
//  Created by MacStudent on 2019-10-24.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var dataList: [Collection] = [] 
var cinemaarray : [String] = ["Cineplex", "Trademax", "Rainbow"]

var incomearray : [Double] = [250, 340, 180]

var cinemaarray1 : [String] = ["Cineplex", "Cinemax"]


var incomearray1 : [Double] = [233, 420]


let m = Movie(no: 12345, title: "Spider Man", year : 2017, cinema: cinemaarray, income: incomearray)
let mm = Movie(no: 23456, title: "Black Panther", year : 2018, cinema: cinemaarray1, income: incomearray1)

dataList.append(m)
dataList.append(mm)
var s = Series(no: 45678, title: "Stringer things", year: 2016, noOfEpisodes: 36, noOfChannels: 6)
var ss = Series(no: 76543, title: "Game of thrones", year: 2019, noOfEpisodes: 75, noOfChannels: 9)
var sss = Series(no: 98712, title: "The good place", year: 2018, noOfEpisodes: 45, noOfChannels: 3)
dataList.append(s)

dataList.append(ss)

dataList.append(sss)

    


// Print titles and income of any movie/series of 2018
print("\nTitles in 2018\n")

for (index, data) in dataList.enumerated() {

    if(data.year == 2018){

        print("Title of movie/Series of 2018  : \(data.title)")
	print("income : \(data.totalincome())")

    }

}


//Enter No. , movie - print cinemas, serial - print no of episodes


print("\nEnter No. to search\n")

var searchno: Int! = Int(readLine()!)


for i in 0..<dataList.count{



    if(searchno == dataList[i].no){



        if let movieeee = dataList[i] as? Movie{

	    let cstring = movieeee.cinema.compactMap{ $0 }.joined(separator: "-")

            print("\nAll cinemas of movie : \(cstring)")



        }



        if let seriesss = dataList[i] as? Series{

            print("\nNo of episodes of series : \(seriesss.noOfEpisodes)")



        }



}
}
// Enter a cinema name - print titles movies in reverse.

print("Enter cinema names\n")
let cinemaName = readLine()
 

for i in 0..<dataList.count{
    if let movieee = dataList[i] as? Movie{
        
    
        if (movieee.cinema.contains(cinemaName!)){
        print(movie.title.reversed())
    } else{
        print("\n Searched cinema is not present")
}

    }

}
