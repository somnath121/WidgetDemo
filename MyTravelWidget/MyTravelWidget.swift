//
//  MyTravelWidget.swift
//  MyTravelWidget
//
//

import WidgetKit
import SwiftUI

struct MyTravelWidgetEntryView : View {
    var entry: Provider.Entry

    @Environment(\.widgetFamily) var family

    @ViewBuilder
    var body: some View {
        switch family {
        case .systemSmall:
            TWSmallView(_travel: entry.travel.first!)

        case .systemMedium:
            TWMediumView(_travel: entry.travel)

        default:
            fatalError()

        }
    }
}

@main
struct MyTravelWidget: Widget {
    let kind: String = "MyTravelWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            MyTravelWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Travel Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

struct MyTravelWidget_Previews: PreviewProvider {
    static var previews: some View {
        MyTravelWidgetEntryView(entry: TravelEntry.mockTravelEntry())
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
