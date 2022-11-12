//
//  Reservation.swift
//  MyTravelApp
//
//

import Foundation

struct Reservation: Decodable {
    let id: Int
    let hotelName,stayFrom, stayTo: String?
    let totalCost: Int?
}
