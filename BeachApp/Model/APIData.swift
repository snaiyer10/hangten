//
//  APIData.swift
//  BeachApp
//
//  Created by Shiza Naiyer on 6/12/21.
//

import Foundation

// MARK: - APIData

struct BeachAPI: Codable {
	var beachApi: [APIData]
}

struct APIData: Codable, Identifiable {
	public var id: Int
	public var district: String
	public var countyNum: Int
	public var county, nameMobileWeb, locationMobileWeb, descriptionMobileWeb: String
	public var phoneNmbr, fee, parking, dsabldacss: String
	public var restrooms, vistorCtr, dogFriendly, ez4Strollers: String
	public var pcncArea, campground, sndyBeach, dunes: String
	public var rkyShore, bluff, strsBeach, pthBeach: String
	public var blftpTrls, blftpPrk, wldlfeVwg, tidepool: String
	public var volleyball, fishing, boating, listOrder: String
	public var geogrArea: String
	public var latitude, longitude: Double
	public var photo1, photo2: String
	public var photo3, photo4, bchWhlchr, bikePath: String
	public var btFacilType: String

	enum CodingKeys: String, CodingKey {
		case id = "ID"
		case district = "DISTRICT"
		case countyNum = "CountyNum"
		case county = "COUNTY"
		case nameMobileWeb = "NameMobileWeb"
		case locationMobileWeb = "LocationMobileWeb"
		case descriptionMobileWeb = "DescriptionMobileWeb"
		case phoneNmbr = "PHONE_NMBR"
		case fee = "FEE"
		case parking = "PARKING"
		case dsabldacss = "DSABLDACSS"
		case restrooms = "RESTROOMS"
		case vistorCtr = "VISTOR_CTR"
		case dogFriendly = "DOG_FRIENDLY"
		case ez4Strollers = "EZ4STROLLERS"
		case pcncArea = "PCNC_AREA"
		case campground = "CAMPGROUND"
		case sndyBeach = "SNDY_BEACH"
		case dunes = "DUNES"
		case rkyShore = "RKY_SHORE"
		case bluff = "BLUFF"
		case strsBeach = "STRS_BEACH"
		case pthBeach = "PTH_BEACH"
		case blftpTrls = "BLFTP_TRLS"
		case blftpPrk = "BLFTP_PRK"
		case wldlfeVwg = "WLDLFE_VWG"
		case tidepool = "TIDEPOOL"
		case volleyball = "VOLLEYBALL"
		case fishing = "FISHING"
		case boating = "BOATING"
		case listOrder = "LIST_ORDER"
		case geogrArea = "GEOGR_AREA"
		case latitude = "LATITUDE"
		case longitude = "LONGITUDE"
		case photo1 = "Photo_1"
		case photo2 = "Photo_2"
		case photo3 = "Photo_3"
		case photo4 = "Photo_4"
		case bchWhlchr = "Bch_whlchr"
		case bikePath = "BIKE_PATH"
		case btFacilType = "BT_FACIL_TYPE"
	}
}
