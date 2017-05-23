//
// Line.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Line: JSONEncodable {
    public var id: String?
    public var name: String?
    public var modeName: String?
    public var disruptions: [Disruption]?
    public var created: Date?
    public var modified: Date?
    public var lineStatuses: [LineStatus]?
    public var routeSections: [MatchedRoute]?
    public var serviceTypes: [LineServiceTypeInfo]?
    public var crowding: Crowding?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name
        nillableDictionary["modeName"] = self.modeName
        nillableDictionary["disruptions"] = self.disruptions?.encodeToJSON()
        nillableDictionary["created"] = self.created?.encodeToJSON()
        nillableDictionary["modified"] = self.modified?.encodeToJSON()
        nillableDictionary["lineStatuses"] = self.lineStatuses?.encodeToJSON()
        nillableDictionary["routeSections"] = self.routeSections?.encodeToJSON()
        nillableDictionary["serviceTypes"] = self.serviceTypes?.encodeToJSON()
        nillableDictionary["crowding"] = self.crowding?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
