//
//  TestData.swift
//  Seat GeekTests
//
//  Created by Lakshmi Bodempudi on 15/05/21.
//  Copyright © 2021 Lakshmi Bodempudi. All rights reserved.
//

import Foundation

struct TestData {
    static let emptyJson = """
                        {}
                    """
                    .data(using: String.Encoding.utf8)!
    static let invalidJson =   """
                            [
                              {
                                "GroupBy": "Device",
                                "GroupName": "One Panel 1",
                                "LOBType": "Doesn't Matter",
                                "Date": "Doesn't Matter",
                                "Time": "Doesn't Matter",
                                "Alarms": [],
                                "AlarmCount": "15"
                              },
                              {
                                "GroupBy": "Device",
                                "GroupName": "One Panel 2",
                                "LOBType": "Doesn't Matter",
                                "Date": "Doesn't Matter",
                                "Time": "Doesn't Matter",
                                "Alarms": [],
                                "AlarmCount": "15"
                              }
                            ]
                        """
                        .data(using: String.Encoding.utf8)!
    static let validJson =
                    """
                        {
                        events: [
                        {
                        type: "nba",
                        id: 5371003,
                        datetime_utc: "2021-05-16T07:30:00",
                        venue: {
                        state: "NY",
                        name_v2: "Barclays Center",
                        postal_code: "11217",
                        name: "Barclays Center",
                        links: [ ],
                        timezone: "America/New_York",
                        url: "https://seatgeek.com/venues/barclays-center/tickets",
                        score: 0.830777,
                        location: {
                        lat: 40.6827,
                        lon: -73.9753
                        },
                        address: "620 Atlantic Avenue",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 45,
                        city: "Brooklyn",
                        slug: "barclays-center",
                        extended_address: "Brooklyn, NY 11217",
                        id: 7546,
                        popularity: 0,
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2018-08-31T16:32:29Z",
                        employee_only: false
                        },
                        metro_code: 501,
                        capacity: 19000,
                        display_location: "Brooklyn, NY"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "nba",
                        name: "Brooklyn Nets",
                        image: "https://seatgeek.com/images/performers-landscape/brooklyn-nets-a886d4/2089/huge.jpg",
                        id: 2089,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/brooklyn-nets-a886d4/2089/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Atlantic",
                        display_name: "Eastern - Atlantic",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-atlantic"
                        }
                        ],
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 17
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "sg",
                        url: "https://seatgeek.com/brooklyn-nets-tickets",
                        score: 0.69,
                        slug: "brooklyn-nets",
                        home_venue_id: 7546,
                        short_name: "Nets",
                        num_upcoming_events: 17,
                        colors: {
                        all: [
                        "#191919",
                        "#191919",
                        "#191919"
                        ],
                        iconic: "#191919",
                        primary: [
                        "#191919",
                        "#191919"
                        ]
                        },
                        image_license: "sg",
                        popularity: 0,
                        home_team: true,
                        location: {
                        lat: 40.6827,
                        lon: -73.9753
                        }
                        },
                        {
                        type: "nba",
                        name: "Cleveland Cavaliers",
                        image: "https://seatgeek.com/images/performers-landscape/cleveland-cavaliers-74baae/2094/huge.jpg",
                        id: 2094,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/cleveland-cavaliers-74baae/2094/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Central",
                        display_name: "Eastern - Central",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-central"
                        }
                        ],
                        has_upcoming_events: true,
                        stats: {
                        event_count: 1
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "Client Submitted",
                        url: "https://seatgeek.com/cleveland-cavaliers-tickets",
                        score: 0.64,
                        slug: "cleveland-cavaliers",
                        home_venue_id: 120,
                        short_name: "Cavaliers",
                        num_upcoming_events: 1,
                        colors: {
                        all: [
                        "#860038",
                        "#FDBB30",
                        "#860038"
                        ],
                        iconic: "#860038",
                        primary: [
                        "#860038",
                        "#FDBB30"
                        ]
                        },
                        image_license: "Client Submitted",
                        popularity: 0,
                        away_team: true,
                        location: {
                        lat: 41.4971,
                        lon: -81.6884
                        }
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T03:30:00",
                        time_tbd: true,
                        short_title: "Cavaliers at Nets",
                        visible_until_utc: "2021-05-17T04:00:00",
                        stats: {
                        listing_count: 28,
                        average_price: 239,
                        lowest_price_good_deals: 125,
                        lowest_price: 125,
                        highest_price: 573,
                        visible_listing_count: 28,
                        dq_bucket_counts: [
                        2,
                        10,
                        8,
                        4,
                        1,
                        3,
                        2,
                        0
                        ],
                        median_price: 200,
                        lowest_sg_base_price: 94,
                        lowest_sg_base_price_good_deals: 94
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/cavaliers-at-nets-tickets/5-16-2021-brooklyn-new-york-barclays-center/nba/5371003",
                        score: 0.8,
                        announce_date: "2021-02-24T00:00:00",
                        created_at: "2021-02-24T20:50:04",
                        date_tbd: false,
                        title: "Cleveland Cavaliers at Brooklyn Nets",
                        popularity: 0.903,
                        description: "",
                        status: "normal",
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2018-08-31T16:32:29Z",
                        employee_only: false
                        },
                        event_promotion: null,
                        announcements: {
                        checkout_disclosures: {
                        messages: [
                        {
                        text: "All purchases are 100% guaranteed. Prices set by the seller may be above or below face value."
                        }
                        ]
                        }
                        },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        },
                        {
                        type: "nba",
                        id: 5374221,
                        datetime_utc: "2021-05-16T07:30:00",
                        venue: {
                        state: "FL",
                        name_v2: "Amalie Arena",
                        postal_code: "33602",
                        name: "Amalie Arena",
                        links: [ ],
                        timezone: "America/New_York",
                        url: "https://seatgeek.com/venues/amalie-arena/tickets",
                        score: 0.769372,
                        location: {
                        lat: 27.9426,
                        lon: -82.4519
                        },
                        address: "401 Channelside Dr",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 45,
                        city: "Tampa",
                        slug: "amalie-arena",
                        extended_address: "Tampa, FL 33602",
                        id: 182,
                        popularity: 0,
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-10-29T16:55:53Z",
                        employee_only: false
                        },
                        metro_code: 539,
                        capacity: 21500,
                        display_location: "Tampa, FL"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "nba",
                        name: "Toronto Raptors",
                        image: "https://seatgeek.com/images/performers-landscape/toronto-raptors-6a85f3/2092/huge.jpg",
                        id: 2092,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/toronto-raptors-6a85f3/2092/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Atlantic",
                        display_name: "Eastern - Atlantic",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-atlantic"
                        }
                        ],
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 20
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://www.flickr.com/photos/bensonkua/4503558956/in/photolist-7RXVbd-8SVJzz-rb2EGW-qvPxZz-rsAXdr-dx82Am-rb2Dzq-dz2b1K-dx82qQ-dz7DvY-qvBERL-rqjmQd-dz2aJc-dx82wb-dx2xAv-rsurhx-5QyEeU-8Um3TM-6rZgch-hKzCNb-hKzh3q-5Qunwx-8SVWPT-hKzhdW-5nQ7Jt-8qGb4-8SVWg8-4oH",
                        url: "https://seatgeek.com/toronto-raptors-tickets",
                        score: 0.65,
                        slug: "toronto-raptors",
                        home_venue_id: 91,
                        short_name: "Raptors",
                        num_upcoming_events: 20,
                        colors: {
                        all: [
                        "#191919",
                        "#C30E2E",
                        "#C30E2E"
                        ],
                        iconic: "#C30E2E",
                        primary: [
                        "#191919",
                        "#C30E2E"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by-sa/2.0/",
                        popularity: 0,
                        home_team: true,
                        location: {
                        lat: 43.6435,
                        lon: -79.3791
                        }
                        },
                        {
                        type: "nba",
                        name: "Indiana Pacers",
                        image: "https://seatgeek.com/images/performers-landscape/indiana-pacers-686bf5/2096/huge.jpg",
                        id: 2096,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/indiana-pacers-686bf5/2096/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Central",
                        display_name: "Eastern - Central",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-central"
                        }
                        ],
                        has_upcoming_events: true,
                        stats: {
                        event_count: 19
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://commons.wikimedia.org/wiki/Category:Bankers_Life_Fieldhouse#/media/File:Bankers_Life_Fieldhouse.JPG",
                        url: "https://seatgeek.com/indiana-pacers-tickets",
                        score: 0.64,
                        slug: "indiana-pacers",
                        home_venue_id: 121,
                        short_name: "Pacers",
                        num_upcoming_events: 19,
                        colors: {
                        all: [
                        "#002D62",
                        "#FDBB30",
                        "#002D62"
                        ],
                        iconic: "#FDBB30",
                        primary: [
                        "#002D62",
                        "#FDBB30"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by-sa/3.0/",
                        popularity: 0,
                        away_team: true,
                        location: {
                        lat: 39.764,
                        lon: -86.1556
                        }
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T03:30:00",
                        time_tbd: true,
                        short_title: "Pacers at Raptors",
                        visible_until_utc: "2021-05-17T04:00:00",
                        stats: {
                        listing_count: 54,
                        average_price: 72,
                        lowest_price_good_deals: 42,
                        lowest_price: 42,
                        highest_price: 134,
                        visible_listing_count: 31,
                        dq_bucket_counts: [
                        8,
                        16,
                        13,
                        3,
                        0,
                        6,
                        8,
                        0
                        ],
                        median_price: 58,
                        lowest_sg_base_price: 28,
                        lowest_sg_base_price_good_deals: 28
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/pacers-at-raptors-tickets/5-16-2021-tampa-florida-amalie-arena/nba/5374221",
                        score: 0.736,
                        announce_date: "2021-03-04T00:00:00",
                        created_at: "2021-03-04T17:24:58",
                        date_tbd: false,
                        title: "Indiana Pacers at Toronto Raptors",
                        popularity: 0.852,
                        description: "",
                        status: "normal",
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-10-29T16:55:53Z",
                        employee_only: false
                        },
                        event_promotion: null,
                        announcements: { },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        },
                        {
                        type: "nba",
                        id: 5373948,
                        datetime_utc: "2021-05-16T07:30:00",
                        venue: {
                        state: "PA",
                        name_v2: "Wells Fargo Center",
                        postal_code: "19148",
                        name: "Wells Fargo Center",
                        links: [ ],
                        timezone: "America/New_York",
                        url: "https://seatgeek.com/venues/wells-fargo-center/tickets",
                        score: 0.815461,
                        location: {
                        lat: 39.9012,
                        lon: -75.172
                        },
                        address: "3601 South Broad Street",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 34,
                        city: "Philadelphia",
                        slug: "wells-fargo-center",
                        extended_address: "Philadelphia, PA 19148",
                        id: 3148,
                        popularity: 0,
                        access_method: {
                        method: "QRCODE",
                        created_at: "2017-11-04T00:41:18Z",
                        employee_only: false
                        },
                        metro_code: 504,
                        capacity: 21000,
                        display_location: "Philadelphia, PA"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "nba",
                        name: "Philadelphia 76ers",
                        image: "https://seatgeek.com/images/performers-landscape/philadelphia-76ers-944c5c/2091/huge.jpg",
                        id: 2091,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/philadelphia-76ers-944c5c/2091/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Atlantic",
                        display_name: "Eastern - Atlantic",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-atlantic"
                        }
                        ],
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 17
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://de.wikipedia.org/wiki/Wells_Fargo_Center_(Philadelphia)#/media/File:Wells_Fargo_Center_2012-02-06.jpg",
                        url: "https://seatgeek.com/philadelphia-76ers-tickets",
                        score: 0.66,
                        slug: "philadelphia-76ers",
                        home_venue_id: 3148,
                        short_name: "76ers",
                        num_upcoming_events: 17,
                        colors: {
                        all: [
                        "#0841A3",
                        "#DA0B36",
                        "#0841A3"
                        ],
                        iconic: "#0841A3",
                        primary: [
                        "#0841A3",
                        "#DA0B36"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by-sa/3.0/",
                        popularity: 0,
                        home_team: true,
                        location: {
                        lat: 39.9012,
                        lon: -75.172
                        }
                        },
                        {
                        type: "nba",
                        name: "Orlando Magic",
                        image: "https://seatgeek.com/images/performers-landscape/orlando-magic-afba3f/2101/huge.jpg",
                        id: 2101,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/orlando-magic-afba3f/2101/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Southeast",
                        display_name: "Eastern - Southeast",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-southeast"
                        }
                        ],
                        has_upcoming_events: true,
                        stats: {
                        event_count: 1
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://www.flickr.com/photos/xelp/7351096724/in/photolist-ccAhWY-ccAhWo-bVe2Zr-ccAi2A-bVe322-bVe2ZM-ccAhYC-7Lfi2B-7LXde2-7M1XRb-7LWVs6-7M1ZwC-7LWWZg-7M28qS-7LX2iZ-7M24wm-7M21Wo-7M23u3-7M1XGw-7LXbL8-7M28ym-7LX3Tk-7LXevV-7LXeYr-7M25xo-7LXdFa-9GdZtS-6nfkfT-7KDrKW-p8rfLR-4hxKbT-5KJtRU-5KJQSa-5KJPKK-4gwMvn-5KP3TL-7LXe3T-7M27kU-7M26Pf-7M26q1-7LWWtM-7M283E-7M2a25-7LX6MD-7M1WiC-7M1WNq-7M1YsL-7LXchK-7M1WW5-7LXcBn",
                        url: "https://seatgeek.com/orlando-magic-tickets",
                        score: 0.64,
                        slug: "orlando-magic",
                        home_venue_id: 2652,
                        short_name: "Magic",
                        num_upcoming_events: 1,
                        colors: {
                        all: [
                        "#191919",
                        "#0B77BD",
                        "#0B77BD"
                        ],
                        iconic: "#0B77BD",
                        primary: [
                        "#191919",
                        "#0B77BD"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by-sa/2.0/",
                        popularity: 0,
                        away_team: true,
                        location: {
                        lat: 28.5392,
                        lon: -81.3839
                        }
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T03:30:00",
                        time_tbd: true,
                        short_title: "Magic at 76ers",
                        visible_until_utc: "2021-05-17T04:00:00",
                        stats: {
                        listing_count: 99,
                        average_price: 124,
                        lowest_price_good_deals: 73,
                        lowest_price: 73,
                        highest_price: 236,
                        visible_listing_count: 91,
                        dq_bucket_counts: [
                        8,
                        27,
                        20,
                        5,
                        17,
                        10,
                        12,
                        0
                        ],
                        median_price: 110,
                        lowest_sg_base_price: 52,
                        lowest_sg_base_price_good_deals: 52
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/magic-at-76ers-tickets/5-16-2021-philadelphia-pennsylvania-wells-fargo-center/nba/5373948",
                        score: 0.732,
                        announce_date: "2021-03-03T00:00:00",
                        created_at: "2021-03-03T18:29:10",
                        date_tbd: false,
                        title: "Orlando Magic at Philadelphia 76ers",
                        popularity: 0.848,
                        description: "",
                        status: "normal",
                        access_method: {
                        method: "QRCODE",
                        created_at: "2017-11-04T00:41:18Z",
                        employee_only: false
                        },
                        event_promotion: null,
                        announcements: { },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        },
                        {
                        type: "nba",
                        id: 5377474,
                        datetime_utc: "2021-05-16T08:30:00",
                        venue: {
                        state: "MN",
                        name_v2: "Target Center",
                        postal_code: "55403",
                        name: "Target Center",
                        links: [ ],
                        timezone: "America/Chicago",
                        url: "https://seatgeek.com/venues/target-center/tickets",
                        score: 0.723693,
                        location: {
                        lat: 44.9793,
                        lon: -93.2757
                        },
                        address: "600 North 1st Ave",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 30,
                        city: "Minneapolis",
                        slug: "target-center",
                        extended_address: "Minneapolis, MN 55403",
                        id: 135,
                        popularity: 0,
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-11-02T17:30:08Z",
                        employee_only: false
                        },
                        metro_code: 613,
                        capacity: 25500,
                        display_location: "Minneapolis, MN"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "nba",
                        name: "Minnesota Timberwolves",
                        image: "https://seatgeek.com/images/performers-landscape/minnesota-timberwolves-0eebfa/2104/huge.jpg",
                        id: 2104,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/minnesota-timberwolves-0eebfa/2104/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Western Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Northwest",
                        display_name: "Western - Northwest",
                        display_type: "Division",
                        division_level: 2,
                        slug: "western-northwest"
                        }
                        ],
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 3
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://en.wikipedia.org/wiki/Minnesota_Timberwolves#/media/File:012308-TC-Twolves001.jpg",
                        url: "https://seatgeek.com/minnesota-timberwolves-tickets",
                        score: 0.63,
                        slug: "minnesota-timberwolves",
                        home_venue_id: 135,
                        short_name: "Timberwolves",
                        num_upcoming_events: 3,
                        colors: {
                        all: [
                        "#0C2340",
                        "#236192",
                        "#0C2340"
                        ],
                        iconic: "#0C2340",
                        primary: [
                        "#0C2340",
                        "#236192"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by/3.0/",
                        popularity: 0,
                        home_team: true,
                        location: {
                        lat: 44.9793,
                        lon: -93.2757
                        }
                        },
                        {
                        type: "nba",
                        name: "Dallas Mavericks",
                        image: "https://seatgeek.com/images/performers-landscape/dallas-mavericks-09d3ce/2113/huge.jpg",
                        id: 2113,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/dallas-mavericks-09d3ce/2113/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Western Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Southwest",
                        display_name: "Western - Southwest",
                        display_type: "Division",
                        division_level: 2,
                        slug: "western-southwest"
                        }
                        ],
                        has_upcoming_events: true,
                        stats: {
                        event_count: 21
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://www.flickr.com/photos/theterrifictc/3147816279/in/photolist-5Nao7t-pQAM2b-5NfE7E-76g4XE-76asCk-aePMAm-5NeK1d-5NaueZ-9PXQLq-9miFGX-5Naj66-HG6pA-HG6pE-6t6SSu-76e5xG-6t6SjA-5NammZ-5NeMvy-5NeDCQ-5NeApN-8KPvqV-5NamQM-5NeN3E-5NbsYx-5Nanrn-noszwZ-5NfaHU-5NeHRG-noJZbz-nosDTz-nmGnqo-noMg1A-nmGprC-noK3X2-noMnHJ-5NeNYS-6t6Kmu-6t2BK2-6t6L6j-6t6RUY-6t6PTA-6t6LRY-6t6KGG-6t2FGX-q86xA3-6t6Nzs-q7Ymnt-pQxbsZ-6t2L5P-6t6FB9",
                        url: "https://seatgeek.com/dallas-mavericks-tickets",
                        score: 0.67,
                        slug: "dallas-mavericks",
                        home_venue_id: 117,
                        short_name: "Mavericks",
                        num_upcoming_events: 21,
                        colors: {
                        all: [
                        "#0064B2",
                        "#B8C4CA",
                        "#0064B2"
                        ],
                        iconic: "#0064B2",
                        primary: [
                        "#0064B2",
                        "#B8C4CA"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by-sa/2.0/",
                        popularity: 0,
                        away_team: true,
                        location: {
                        lat: 32.7904,
                        lon: -96.8103
                        }
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T03:30:00",
                        time_tbd: true,
                        short_title: "Mavericks at Timberwolves",
                        visible_until_utc: "2021-05-17T05:00:00",
                        stats: {
                        listing_count: 1,
                        average_price: 340,
                        lowest_price_good_deals: null,
                        lowest_price: 340,
                        highest_price: 340,
                        visible_listing_count: 1,
                        dq_bucket_counts: [
                        0,
                        0,
                        1,
                        0,
                        0,
                        0,
                        1,
                        0
                        ],
                        median_price: 340,
                        lowest_sg_base_price: 263,
                        lowest_sg_base_price_good_deals: null
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/mavericks-at-timberwolves-tickets/5-16-2021-minneapolis-minnesota-target-center/nba/5377474",
                        score: 0.65,
                        announce_date: "2021-03-13T00:00:00",
                        created_at: "2021-03-13T22:07:43",
                        date_tbd: false,
                        title: "Dallas Mavericks at Minnesota Timberwolves",
                        popularity: 0.783,
                        description: "",
                        status: "normal",
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-11-02T17:30:08Z",
                        employee_only: false
                        },
                        event_promotion: null,
                        announcements: { },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        },
                        {
                        type: "nba",
                        id: 5373142,
                        datetime_utc: "2021-05-16T08:30:00",
                        venue: {
                        state: "TX",
                        name_v2: "AT&T Center",
                        postal_code: "78219",
                        name: "AT&T Center",
                        links: [ ],
                        timezone: "America/Chicago",
                        url: "https://seatgeek.com/venues/at-t-center/tickets",
                        score: 0.756846,
                        location: {
                        lat: 29.4271,
                        lon: -98.4374
                        },
                        address: "1 AT&T Center Parkway",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 35,
                        city: "San Antonio",
                        slug: "at-t-center",
                        extended_address: "San Antonio, TX 78219",
                        id: 185,
                        popularity: 0,
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-10-17T20:03:57Z",
                        employee_only: false
                        },
                        metro_code: 641,
                        capacity: 18797,
                        display_location: "San Antonio, TX"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "nba",
                        name: "San Antonio Spurs",
                        image: "https://seatgeek.com/images/performers-landscape/san-antonio-spurs-5576fd/2117/huge.jpg",
                        id: 2117,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/san-antonio-spurs-5576fd/2117/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Western Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Southwest",
                        display_name: "Western - Southwest",
                        display_type: "Division",
                        division_level: 2,
                        slug: "western-southwest"
                        }
                        ],
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 20
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://commons.wikimedia.org/wiki/Category:AT%26T_Center#/media/File:2014_NBA_Playoffs_Dallas_Mavericks_vs._San_Antonio_Spurs.jpg",
                        url: "https://seatgeek.com/san-antonio-spurs-tickets",
                        score: 0.65,
                        slug: "san-antonio-spurs",
                        home_venue_id: 185,
                        short_name: "Spurs",
                        num_upcoming_events: 20,
                        colors: {
                        all: [
                        "#191919",
                        "#C4CED4",
                        "#191919"
                        ],
                        iconic: "#191919",
                        primary: [
                        "#191919",
                        "#C4CED4"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by/2.0/",
                        popularity: 0,
                        home_team: true,
                        location: {
                        lat: 29.4271,
                        lon: -98.4374
                        }
                        },
                        {
                        type: "nba",
                        name: "Phoenix Suns",
                        image: "https://seatgeek.com/images/performers-landscape/phoenix-suns-13bba7/2111/huge.jpg",
                        id: 2111,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/phoenix-suns-13bba7/2111/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Western Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Pacific",
                        display_name: "Western - Pacific",
                        display_type: "Division",
                        division_level: 2,
                        slug: "western-pacific"
                        }
                        ],
                        has_upcoming_events: true,
                        stats: {
                        event_count: 17
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "Provided to Jeff Ianello",
                        url: "https://seatgeek.com/phoenix-suns-tickets",
                        score: 0.65,
                        slug: "phoenix-suns",
                        home_venue_id: 130,
                        short_name: "Suns",
                        num_upcoming_events: 17,
                        colors: {
                        all: [
                        "#1D1160",
                        "#E56020",
                        "#1D1160"
                        ],
                        iconic: "#1D1160",
                        primary: [
                        "#1D1160",
                        "#E56020"
                        ]
                        },
                        image_license: null,
                        popularity: 0,
                        away_team: true,
                        location: {
                        lat: 33.4458,
                        lon: -112.071
                        }
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T03:30:00",
                        time_tbd: true,
                        short_title: "Suns at Spurs",
                        visible_until_utc: "2021-05-17T05:00:00",
                        stats: {
                        listing_count: 85,
                        average_price: 199,
                        lowest_price_good_deals: 38,
                        lowest_price: 38,
                        highest_price: 1412,
                        visible_listing_count: 74,
                        dq_bucket_counts: [
                        14,
                        18,
                        18,
                        8,
                        9,
                        6,
                        11,
                        0
                        ],
                        median_price: 100,
                        lowest_sg_base_price: 25,
                        lowest_sg_base_price_good_deals: 25
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/suns-at-spurs-tickets/5-16-2021-san-antonio-texas-at-t-center/nba/5373142",
                        score: 0.666,
                        announce_date: "2021-03-01T00:00:00",
                        created_at: "2021-03-01T19:07:04",
                        date_tbd: false,
                        title: "Phoenix Suns at San Antonio Spurs",
                        popularity: 0.797,
                        description: "",
                        status: "normal",
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-10-17T20:03:57Z",
                        employee_only: false
                        },
                        event_promotion: null,
                        announcements: { },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        },
                        {
                        type: "nba",
                        id: 5375797,
                        datetime_utc: "2021-05-16T17:00:00",
                        venue: {
                        state: "NY",
                        name_v2: "Madison Square Garden",
                        postal_code: "10001",
                        name: "Madison Square Garden",
                        links: [ ],
                        timezone: "America/New_York",
                        url: "https://seatgeek.com/venues/madison-square-garden/tickets",
                        score: 0.886954,
                        location: {
                        lat: 40.7509,
                        lon: -73.9943
                        },
                        address: "4 Pennsylvania Plaza",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 62,
                        city: "New York",
                        slug: "madison-square-garden",
                        extended_address: "New York, NY 10001",
                        id: 93,
                        popularity: 0,
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2017-10-06T21:43:25Z",
                        employee_only: false
                        },
                        metro_code: 501,
                        capacity: 20000,
                        display_location: "New York, NY"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "nba",
                        name: "New York Knicks",
                        image: "https://seatgeek.com/images/performers-landscape/new-york-knicks-e71f00/2090/huge.jpg",
                        id: 2090,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/new-york-knicks-e71f00/2090/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Atlantic",
                        display_name: "Eastern - Atlantic",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-atlantic"
                        }
                        ],
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 17
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "Provided by Stephen D'Amico",
                        url: "https://seatgeek.com/new-york-knicks-tickets",
                        score: 0.75,
                        slug: "new-york-knicks",
                        home_venue_id: 93,
                        short_name: "Knicks",
                        num_upcoming_events: 17,
                        colors: {
                        all: [
                        "#0F4B90",
                        "#F26729",
                        "#0F4B90"
                        ],
                        iconic: "#0F4B90",
                        primary: [
                        "#0F4B90",
                        "#F26729"
                        ]
                        },
                        image_license: null,
                        popularity: 0,
                        home_team: true,
                        location: {
                        lat: 40.7509,
                        lon: -73.9943
                        }
                        },
                        {
                        type: "nba",
                        name: "Boston Celtics",
                        image: "https://seatgeek.com/images/performers-landscape/boston-celtics-e2a099/2088/huge.jpg",
                        id: 2088,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/boston-celtics-e2a099/2088/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Atlantic",
                        display_name: "Eastern - Atlantic",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-atlantic"
                        }
                        ],
                        has_upcoming_events: true,
                        stats: {
                        event_count: 19
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://commons.wikimedia.org/wiki/Category:2013%E2%80%9314_Boston_Celtics_season#/media/File:NBA_-_February_2014_-_Celtics_vs_Spurs_-_TD_Garden_-_2.JPG",
                        url: "https://seatgeek.com/boston-celtics-tickets",
                        score: 0.7,
                        slug: "boston-celtics",
                        home_venue_id: 1544,
                        short_name: "Celtics",
                        num_upcoming_events: 19,
                        colors: {
                        all: [
                        "#10824A",
                        "#10824A",
                        "#10824A"
                        ],
                        iconic: "#10824A",
                        primary: [
                        "#10824A",
                        "#10824A"
                        ]
                        },
                        image_license: "http://creativecommons.org/licenses/by-sa/3.0",
                        popularity: 0,
                        away_team: true,
                        location: {
                        lat: 42.3653,
                        lon: -71.0618
                        }
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T13:00:00",
                        time_tbd: false,
                        short_title: "Celtics at Knicks",
                        visible_until_utc: "2021-05-16T21:00:00",
                        stats: {
                        listing_count: 51,
                        average_price: 493,
                        lowest_price_good_deals: 211,
                        lowest_price: 211,
                        highest_price: 1839,
                        visible_listing_count: 51,
                        dq_bucket_counts: [
                        10,
                        7,
                        14,
                        6,
                        5,
                        7,
                        3,
                        0
                        ],
                        median_price: 312,
                        lowest_sg_base_price: 160,
                        lowest_sg_base_price_good_deals: 160
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/celtics-at-knicks-tickets/5-16-2021-new-york-new-york-madison-square-garden/nba/5375797",
                        score: 0.842,
                        announce_date: "2021-03-09T00:00:00",
                        created_at: "2021-03-09T20:35:15",
                        date_tbd: false,
                        title: "Boston Celtics at New York Knicks",
                        popularity: 0.938,
                        description: "",
                        status: "normal",
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2017-10-06T21:43:25Z",
                        employee_only: false
                        },
                        event_promotion: null,
                        announcements: {
                        checkout_disclosures: {
                        messages: [
                        {
                        text: "All purchases are 100% guaranteed. Prices set by the seller may be above or below face value."
                        }
                        ]
                        }
                        },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        },
                        {
                        type: "wnba",
                        id: 5386475,
                        datetime_utc: "2021-05-16T18:00:00",
                        venue: {
                        state: "IN",
                        name_v2: "Bankers Life Fieldhouse",
                        postal_code: "46204",
                        name: "Bankers Life Fieldhouse",
                        links: [ ],
                        timezone: "America/Indiana/Indianapolis",
                        url: "https://seatgeek.com/venues/bankers-life-fieldhouse/tickets",
                        score: 0.753366,
                        location: {
                        lat: 39.764,
                        lon: -86.1556
                        },
                        address: "125 S. Pennsylvania St.",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 31,
                        city: "Indianapolis",
                        slug: "bankers-life-fieldhouse",
                        extended_address: "Indianapolis, IN 46204",
                        id: 121,
                        popularity: 0,
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2017-03-18T05:43:51Z",
                        employee_only: false
                        },
                        metro_code: 527,
                        capacity: 18345,
                        display_location: "Indianapolis, IN"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "wnba",
                        name: "Indiana Fever",
                        image: "https://seatgeek.com/images/performers-landscape/indiana-fever-2d24ec/10716/huge.jpg",
                        id: 10716,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/indiana-fever-2d24ec/10716/huge.jpg"
                        },
                        divisions: null,
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 29
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030400,
                        name: "wnba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: null,
                        url: "https://seatgeek.com/indiana-fever-tickets",
                        score: 0.38,
                        slug: "indiana-fever",
                        home_venue_id: null,
                        short_name: "Indiana Fever",
                        num_upcoming_events: 29,
                        colors: null,
                        image_license: null,
                        popularity: 0,
                        home_team: true,
                        location: null
                        },
                        {
                        type: "wnba",
                        name: "New York Liberty",
                        image: "https://seatgeek.com/images/performers-landscape/new-york-liberty-ea1eeb/10737/huge.jpg",
                        id: 10737,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/new-york-liberty-ea1eeb/10737/huge.jpg"
                        },
                        divisions: null,
                        has_upcoming_events: true,
                        stats: {
                        event_count: 28
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030400,
                        name: "wnba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: null,
                        url: "https://seatgeek.com/new-york-liberty-tickets",
                        score: 0.46,
                        slug: "new-york-liberty",
                        home_venue_id: null,
                        short_name: "New York Liberty",
                        num_upcoming_events: 28,
                        colors: null,
                        image_license: null,
                        popularity: 0,
                        away_team: true,
                        location: null
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T14:00:00",
                        time_tbd: false,
                        short_title: "New York Libery at Indiana Fever",
                        visible_until_utc: "2021-05-16T22:00:00",
                        stats: {
                        listing_count: 41,
                        average_price: 56,
                        lowest_price_good_deals: 38,
                        lowest_price: 38,
                        highest_price: 92,
                        visible_listing_count: 41,
                        dq_bucket_counts: [
                        2,
                        9,
                        13,
                        7,
                        6,
                        7,
                        1,
                        0
                        ],
                        median_price: 55,
                        lowest_sg_base_price: 25,
                        lowest_sg_base_price_good_deals: 25
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030400,
                        name: "wnba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/new-york-libery-at-indiana-fever-tickets/wnba/2021-05-16-2-pm/5386475",
                        score: 0.35,
                        announce_date: "2021-04-13T00:00:00",
                        created_at: "2021-04-13T21:36:30",
                        date_tbd: false,
                        title: "New York Libery at Indiana Fever",
                        popularity: 0.548,
                        description: "",
                        status: "normal",
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2017-03-18T05:43:51Z",
                        employee_only: false
                        },
                        event_promotion: null,
                        announcements: { },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        },
                        {
                        type: "nba",
                        id: 5383765,
                        datetime_utc: "2021-05-16T19:30:00",
                        venue: {
                        state: "CA",
                        name_v2: "Chase Center",
                        postal_code: "94158",
                        name: "Chase Center",
                        links: [ ],
                        timezone: "America/Los_Angeles",
                        url: "https://seatgeek.com/venues/chase-center/tickets",
                        score: 0,
                        location: {
                        lat: 37.7704,
                        lon: -122.387
                        },
                        address: "300 16th Street",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 41,
                        city: "San Francisco",
                        slug: "chase-center",
                        extended_address: "San Francisco, CA 94158",
                        id: 467029,
                        popularity: 0,
                        access_method: null,
                        metro_code: 807,
                        capacity: 18064,
                        display_location: "San Francisco, CA"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "nba",
                        name: "Golden State Warriors",
                        image: "https://seatgeek.com/images/performers-landscape/golden-state-warriors-d27681/2108/huge.jpg",
                        id: 2108,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/golden-state-warriors-d27681/2108/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Western Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Pacific",
                        display_name: "Western - Pacific",
                        display_type: "Division",
                        division_level: 2,
                        slug: "western-pacific"
                        }
                        ],
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 19
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://i.ytimg.com/vi/fhp7IynfIfw/maxresdefault.jpg",
                        url: "https://seatgeek.com/golden-state-warriors-tickets",
                        score: 0.72,
                        slug: "golden-state-warriors",
                        home_venue_id: 467029,
                        short_name: "Warriors",
                        num_upcoming_events: 19,
                        colors: {
                        all: [
                        "#0044B0",
                        "#F8C313",
                        "#0044B0"
                        ],
                        iconic: "#F8C313",
                        primary: [
                        "#0044B0",
                        "#F8C313"
                        ]
                        },
                        image_license: null,
                        popularity: 0,
                        home_team: true,
                        location: {
                        lat: 37.7704,
                        lon: -122.387
                        }
                        },
                        {
                        type: "nba",
                        name: "Memphis Grizzlies",
                        image: "https://seatgeek.com/images/performers-landscape/memphis-grizzlies-dcfd3a/2115/huge.jpg",
                        id: 2115,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/memphis-grizzlies-dcfd3a/2115/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Western Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Southwest",
                        display_name: "Western - Southwest",
                        display_type: "Division",
                        division_level: 2,
                        slug: "western-southwest"
                        }
                        ],
                        has_upcoming_events: true,
                        stats: {
                        event_count: 19
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://www.flickr.com/photos/theogeo/3176410418/in/photolist-9QyFB3-9QyGXU-9QyGyL-9QyHrQ-9yuhoZ-9etBij-7NjrkD-6KaKU1-9g7XFv-9gb4uU-9gb4HW-9gb4k7-9gb3Aq-9gb3NU-9g7VLt-9g7T9Z-9gaYGo-9g7Tmv-5NaZ8F-5NaYBt-5NfE7E-5NaXBc-5NbogT-5NaWEM-5NaW8R-5NeLW3-5RZphs-7eLueN-5QBWRp-5QBYvg-5QBFk2-5QBF2V-5QFW9S-5QFVHJ-5QBDcx-5QBDxZ-5QBzrg-5QBAiz-5QFQJJ-484mdz-488nvy-484kfx-484kJV-488n4U-484k5D-484c4t-484bEk-484cir-6z8nVZ-5QFQno/",
                        url: "https://seatgeek.com/memphis-grizzlies-tickets",
                        score: 0.62,
                        slug: "memphis-grizzlies",
                        home_venue_id: 1243,
                        short_name: "Grizzlies",
                        num_upcoming_events: 19,
                        colors: {
                        all: [
                        "#12173F",
                        "#5D76A9",
                        "#5D76A9"
                        ],
                        iconic: "#5D76A9",
                        primary: [
                        "#12173F",
                        "#5D76A9"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by/2.0/",
                        popularity: 0,
                        away_team: true,
                        location: {
                        lat: 35.1383,
                        lon: -90.0522
                        }
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T12:30:00",
                        time_tbd: false,
                        short_title: "Grizzlies at Warriors",
                        visible_until_utc: "2021-05-16T23:30:00",
                        stats: {
                        listing_count: null,
                        average_price: null,
                        lowest_price_good_deals: null,
                        lowest_price: null,
                        highest_price: null,
                        visible_listing_count: null,
                        dq_bucket_counts: null,
                        median_price: null,
                        lowest_sg_base_price: null,
                        lowest_sg_base_price_good_deals: null
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/grizzlies-at-warriors-tickets/5-16-2021-san-francisco-california-chase-center/nba/5383765",
                        score: 0.721,
                        announce_date: "2021-04-08T00:00:00",
                        created_at: "2021-04-08T20:44:08",
                        date_tbd: false,
                        title: "Memphis Grizzlies at Golden State Warriors",
                        popularity: 0.829,
                        description: "",
                        status: "normal",
                        access_method: null,
                        event_promotion: null,
                        announcements: { },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        },
                        {
                        type: "nba",
                        id: 5371403,
                        datetime_utc: "2021-05-16T23:00:00",
                        venue: {
                        state: "GA",
                        name_v2: "State Farm Arena",
                        postal_code: "30303",
                        name: "State Farm Arena",
                        links: [ ],
                        timezone: "America/New_York",
                        url: "https://seatgeek.com/venues/state-farm-arena-1/tickets",
                        score: 0.769998,
                        location: {
                        lat: 33.7566,
                        lon: -84.3969
                        },
                        address: "1 Philips Drive",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 42,
                        city: "Atlanta",
                        slug: "state-farm-arena-1",
                        extended_address: "Atlanta, GA 30303",
                        id: 127,
                        popularity: 0,
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-08-20T16:17:25Z",
                        employee_only: false
                        },
                        metro_code: 524,
                        capacity: 21000,
                        display_location: "Atlanta, GA"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "nba",
                        name: "Atlanta Hawks",
                        image: "https://seatgeek.com/images/performers-landscape/atlanta-hawks-25e5a5/2098/huge.jpg",
                        id: 2098,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/atlanta-hawks-25e5a5/2098/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Southeast",
                        display_name: "Eastern - Southeast",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-southeast"
                        }
                        ],
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 19
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://commons.wikimedia.org/wiki/File:Philips_Arena_basketball.jpg",
                        url: "https://seatgeek.com/atlanta-hawks-tickets",
                        score: 0.64,
                        slug: "atlanta-hawks",
                        home_venue_id: 127,
                        short_name: "Hawks",
                        num_upcoming_events: 19,
                        colors: {
                        all: [
                        "#DF3033",
                        "#C1D32F",
                        "#DF3033"
                        ],
                        iconic: "#DF3033",
                        primary: [
                        "#DF3033",
                        "#C1D32F"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by-sa/3.0/deed.en",
                        popularity: 0,
                        home_team: true,
                        location: {
                        lat: 33.7566,
                        lon: -84.3969
                        }
                        },
                        {
                        type: "nba",
                        name: "Houston Rockets",
                        image: "https://seatgeek.com/images/performers-landscape/houston-rockets-3bc202/2114/huge.jpg",
                        id: 2114,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/houston-rockets-3bc202/2114/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Western Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Southwest",
                        display_name: "Western - Southwest",
                        display_type: "Division",
                        division_level: 2,
                        slug: "western-southwest"
                        }
                        ],
                        has_upcoming_events: true,
                        stats: {
                        event_count: 1
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://www.flickr.com/photos/royluck/16357013411/in/photolist-qVpYdB-qD7yhi-mcn9x8-mcnfPB-mcodNZ-mco9NV-mcpiy9-mcpEg1-mcmx8t-mckEur-mcmB9z-mcnuRp-mcpJB5-mcnJNm-mcptLd-mcpAD1-mcoKtg-mconwR-mckUB4-mcnL9C-mcm3ak-mcnX3m-mcnQbW-mco5xG-mcmjDx-mcofXE-mcnZ4A-mcm",
                        url: "https://seatgeek.com/houston-rockets-tickets",
                        score: 0.63,
                        slug: "houston-rockets",
                        home_venue_id: 129,
                        short_name: "Rockets",
                        num_upcoming_events: 1,
                        colors: {
                        all: [
                        "#191919",
                        "#CE1141",
                        "#CE1141"
                        ],
                        iconic: "#CE1141",
                        primary: [
                        "#191919",
                        "#CE1141"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by/2.0/",
                        popularity: 0,
                        away_team: true,
                        location: {
                        lat: 29.7508,
                        lon: -95.3621
                        }
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T19:00:00",
                        time_tbd: false,
                        short_title: "Rockets at Hawks",
                        visible_until_utc: "2021-05-17T03:00:00",
                        stats: {
                        listing_count: 155,
                        average_price: 250,
                        lowest_price_good_deals: 62,
                        lowest_price: 62,
                        highest_price: 2279,
                        visible_listing_count: 136,
                        dq_bucket_counts: [
                        13,
                        51,
                        34,
                        14,
                        13,
                        12,
                        22,
                        0
                        ],
                        median_price: 110,
                        lowest_sg_base_price: 44,
                        lowest_sg_base_price_good_deals: 44
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/rockets-at-hawks-tickets/5-16-2021-atlanta-georgia-state-farm-arena-1/nba/5371403",
                        score: 0.696,
                        announce_date: "2021-02-25T00:00:00",
                        created_at: "2021-02-25T16:00:15",
                        date_tbd: false,
                        title: "Houston Rockets at Atlanta Hawks",
                        popularity: 0.822,
                        description: "",
                        status: "normal",
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-08-20T16:17:25Z",
                        employee_only: false
                        },
                        event_promotion: null,
                        announcements: { },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        },
                        {
                        type: "nba",
                        id: 5384253,
                        datetime_utc: "2021-05-16T23:00:00",
                        venue: {
                        state: "DC",
                        name_v2: "Capital One Arena",
                        postal_code: "20004",
                        name: "Capital One Arena",
                        links: [ ],
                        timezone: "America/New_York",
                        url: "https://seatgeek.com/venues/capital-one-arena/tickets",
                        score: 0.797378,
                        location: {
                        lat: 38.8981,
                        lon: -77.0209
                        },
                        address: "601 F Street Northwest",
                        country: "US",
                        has_upcoming_events: true,
                        num_upcoming_events: 56,
                        city: "Washington",
                        slug: "capital-one-arena",
                        extended_address: "Washington, DC 20004",
                        id: 181,
                        popularity: 0,
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-07-20T00:00:00Z",
                        employee_only: false
                        },
                        metro_code: 511,
                        capacity: 20173,
                        display_location: "Washington, DC"
                        },
                        datetime_tbd: false,
                        performers: [
                        {
                        type: "nba",
                        name: "Washington Wizards",
                        image: "https://seatgeek.com/images/performers-landscape/washington-wizards-b66161/2102/huge.jpg",
                        id: 2102,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/washington-wizards-b66161/2102/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Southeast",
                        display_name: "Eastern - Southeast",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-southeast"
                        }
                        ],
                        has_upcoming_events: true,
                        primary: true,
                        stats: {
                        event_count: 20
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "nullhttps://www.flickr.com/photos/eviltomthai/5225619246/in/photolist-8XLExy-mAR9kt-9hM6HN-76g3iJ-eXUr8G-eXH2kc-7ecJnY-7edmxo-7ddVAp-5CULfS-5CQscz-67euft-67ev2t-67iJ9A-4JQvZV-67eweM-5Ff83g-4waWEi-4CEF2g-4JVGSo-8XLGxE-8XHFu8-8XHHAV-9hMi3w-9hJczg-eXH2GZ-9eH3JR-jf8yPk-66Vjf6-5EPmdv-bQTu84-bQTueg-bQTuj4-imPju9-922jke-erfZD-9eLa6j-dHhBQJ-dHhCTY-pS5En8-dHhDjU-dHccSK-dHhFUJ-dHcfUk-dHceGn-dHcf9r-dHcein-pvPX3R-oLc94h-5ATHtz",
                        url: "https://seatgeek.com/washington-wizards-tickets",
                        score: 0.67,
                        slug: "washington-wizards",
                        home_venue_id: 181,
                        short_name: "Wizards",
                        num_upcoming_events: 20,
                        colors: {
                        all: [
                        "#002A5C",
                        "#E31837",
                        "#002A5C"
                        ],
                        iconic: "#002A5C",
                        primary: [
                        "#002A5C",
                        "#E31837"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by/2.0/",
                        popularity: 0,
                        home_team: true,
                        location: {
                        lat: 38.8981,
                        lon: -77.0209
                        }
                        },
                        {
                        type: "nba",
                        name: "Charlotte Hornets",
                        image: "https://seatgeek.com/images/performers-landscape/charlotte-hornets-1a7aaa/2099/huge.jpg",
                        id: 2099,
                        images: {
                        huge: "https://seatgeek.com/images/performers-landscape/charlotte-hornets-1a7aaa/2099/huge.jpg"
                        },
                        divisions: [
                        {
                        taxonomy_id: 1030100,
                        short_name: null,
                        display_name: "Eastern Conference",
                        display_type: "Conference",
                        division_level: 1,
                        slug: null
                        },
                        {
                        taxonomy_id: 1030100,
                        short_name: "Southeast",
                        display_name: "Eastern - Southeast",
                        display_type: "Division",
                        division_level: 2,
                        slug: "eastern-southeast"
                        }
                        ],
                        has_upcoming_events: true,
                        stats: {
                        event_count: 19
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        document_source: {
                        source_type: "ELASTIC",
                        generation_type: "FULL"
                        },
                        rank: 0
                        }
                        ],
                        image_attribution: "https://commons.wikimedia.org/wiki/File:Bobcats_Arena.JPG",
                        url: "https://seatgeek.com/charlotte-hornets-tickets",
                        score: 0.64,
                        slug: "charlotte-hornets",
                        home_venue_id: 112,
                        short_name: "Hornets",
                        num_upcoming_events: 19,
                        colors: {
                        all: [
                        "#1D1160",
                        "#00788C",
                        "#1D1160"
                        ],
                        iconic: "#00788C",
                        primary: [
                        "#1D1160",
                        "#00788C"
                        ]
                        },
                        image_license: "https://creativecommons.org/licenses/by-sa/3.0/deed.en",
                        popularity: 0,
                        away_team: true,
                        location: {
                        lat: 35.2248,
                        lon: -80.8403
                        }
                        }
                        ],
                        is_open: false,
                        links: [ ],
                        datetime_local: "2021-05-16T19:00:00",
                        time_tbd: false,
                        short_title: "Hornets at Wizards",
                        visible_until_utc: "2021-05-17T03:00:00",
                        stats: {
                        listing_count: null,
                        average_price: null,
                        lowest_price_good_deals: null,
                        lowest_price: null,
                        highest_price: null,
                        visible_listing_count: null,
                        dq_bucket_counts: null,
                        median_price: null,
                        lowest_sg_base_price: null,
                        lowest_sg_base_price_good_deals: null
                        },
                        taxonomies: [
                        {
                        id: 1000000,
                        name: "sports",
                        parent_id: null,
                        rank: 0
                        },
                        {
                        id: 1030000,
                        name: "basketball",
                        parent_id: 1000000,
                        rank: 0
                        },
                        {
                        id: 1030100,
                        name: "nba",
                        parent_id: 1030000,
                        rank: 0
                        }
                        ],
                        url: "https://seatgeek.com/hornets-at-wizards-tickets/5-16-2021-washington-district-of-columbia-capital-one-arena/nba/5384253",
                        score: 0.706,
                        announce_date: "2021-04-09T00:00:00",
                        created_at: "2021-04-09T22:51:08",
                        date_tbd: false,
                        title: "Charlotte Hornets at Washington Wizards",
                        popularity: 0.823,
                        description: "",
                        status: "normal",
                        access_method: {
                        method: "QRCODE_TM",
                        created_at: "2015-07-20T00:00:00Z",
                        employee_only: false
                        },
                        event_promotion: null,
                        announcements: { },
                        conditional: false,
                        enddatetime_utc: null,
                        themes: [ ],
                        domain_information: [ ]
                        }
                        ],
                        meta: {
                        total: 1292,
                        took: 7,
                        page: 1,
                        per_page: 10,
                        geolocation: null
                        },
                        in_hand: { }
                        }
                    """
                    .data(using: String.Encoding.utf8)!
}
