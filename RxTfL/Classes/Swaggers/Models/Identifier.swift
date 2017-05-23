//
// Identifier.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Identifier: JSONEncodable {
    public var id: String?
    public var name: String?
    public var uri: String?
    public var fullName: String?
    public var type: String?
    public var crowding: Crowding?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name
        nillableDictionary["uri"] = self.uri
        nillableDictionary["fullName"] = self.fullName
        nillableDictionary["type"] = self.type
        nillableDictionary["crowding"] = self.crowding?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
