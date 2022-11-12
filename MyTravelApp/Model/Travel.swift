//
//  Travel.swift
//  MyTravelApp
//
//

import Foundation

struct TravelResponse : Decodable
{
    let result: [Travel]?
}

struct Travel: Decodable{
    let id: Int
    let destination, travelby, date: String?
    let reservation: Reservation?
}
