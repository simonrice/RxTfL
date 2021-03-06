//
// AdditionalProperties.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class AdditionalProperties: JSONEncodable {

    public var category: String?
    public var key: String?
    public var sourceSystemKey: String?
    public var value: String?
    public var modified: Date?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["category"] = self.category
        nillableDictionary["key"] = self.key
        nillableDictionary["sourceSystemKey"] = self.sourceSystemKey
        nillableDictionary["value"] = self.value
        nillableDictionary["modified"] = self.modified?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
