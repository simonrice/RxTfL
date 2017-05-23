//
// RouteSectionNaptanEntrySequence.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class RouteSectionNaptanEntrySequence: JSONEncodable {
    public var ordinal: Int32?
    public var stopPoint: StopPoint?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["ordinal"] = self.ordinal?.encodeToJSON()
        nillableDictionary["stopPoint"] = self.stopPoint?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
