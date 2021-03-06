//
// LineModeGroup.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class LineModeGroup: JSONEncodable {

    public var modeName: String?
    public var lineIdentifier: [String]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["modeName"] = self.modeName
        nillableDictionary["lineIdentifier"] = self.lineIdentifier?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
