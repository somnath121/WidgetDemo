//
//  TravelEntry.swift
//  MyTravelWidgetExtension
//
//

import WidgetKit

struct TravelEntry: TimelineEntry {
    let date: Date
    let travel : [Travel]

    static func mockTravelEntry() -> TravelEntry {
        return TravelEntry(date: Date(), travel: [Travel(id: 1, destination: "Mumbai", travelby: "Airplane", date: "15-Jul-2021", reservation: Reservation(id: 12, hotelName: "Sammy hotel", stayFrom: "16-Jul-2021", stayTo: "10-Aug-2021", totalCost: 16000))])
    }

}
