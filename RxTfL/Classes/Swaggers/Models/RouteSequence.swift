//
// RouteSequence.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class RouteSequence: JSONEncodable {

    public var lineId: String?
    public var lineName: String?
    public var direction: String?
    public var isOutboundOnly: Bool?
    public var mode: String?
    public var lineStrings: [String]?
    public var stations: [MatchedStop]?
    public var stopPointSequences: [StopPointSequence]?
    public var orderedLineRoutes: [OrderedRoute]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["lineId"] = self.lineId
        nillableDictionary["lineName"] = self.lineName
        nillableDictionary["direction"] = self.direction
        nillableDictionary["isOutboundOnly"] = self.isOutboundOnly
        nillableDictionary["mode"] = self.mode
        nillableDictionary["lineStrings"] = self.lineStrings?.encodeToJSON()
        nillableDictionary["stations"] = self.stations?.encodeToJSON()
        nillableDictionary["stopPointSequences"] = self.stopPointSequences?.encodeToJSON()
        nillableDictionary["orderedLineRoutes"] = self.orderedLineRoutes?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
