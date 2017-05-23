//
// MatchedStop.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class MatchedStop: JSONEncodable {
    public var routeId: Int32?
    public var parentId: String?
    public var stationId: String?
    public var icsId: String?
    public var topMostParentId: String?
    public var direction: String?
    public var towards: String?
    public var modes: [String]?
    public var stopType: String?
    public var stopLetter: String?
    public var zone: String?
    public var accessibilitySummary: String?
    public var hasDisruption: Bool?
    public var lines: [Identifier]?
    public var status: Bool?
    public var id: String?
    public var url: String?
    public var name: String?
    public var lat: Double?
    public var lon: Double?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["routeId"] = self.routeId?.encodeToJSON()
        nillableDictionary["parentId"] = self.parentId
        nillableDictionary["stationId"] = self.stationId
        nillableDictionary["icsId"] = self.icsId
        nillableDictionary["topMostParentId"] = self.topMostParentId
        nillableDictionary["direction"] = self.direction
        nillableDictionary["towards"] = self.towards
        nillableDictionary["modes"] = self.modes?.encodeToJSON()
        nillableDictionary["stopType"] = self.stopType
        nillableDictionary["stopLetter"] = self.stopLetter
        nillableDictionary["zone"] = self.zone
        nillableDictionary["accessibilitySummary"] = self.accessibilitySummary
        nillableDictionary["hasDisruption"] = self.hasDisruption
        nillableDictionary["lines"] = self.lines?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["id"] = self.id
        nillableDictionary["url"] = self.url
        nillableDictionary["name"] = self.name
        nillableDictionary["lat"] = self.lat
        nillableDictionary["lon"] = self.lon
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
