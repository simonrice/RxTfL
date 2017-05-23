//
// AccidentStatsOrderedSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class AccidentStatsOrderedSummary: JSONEncodable {
    public var year: Int32?
    public var borough: String?
    public var accidents: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["year"] = self.year?.encodeToJSON()
        nillableDictionary["borough"] = self.borough
        nillableDictionary["accidents"] = self.accidents?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}