//
// DbGeographyWellKnownValue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class DbGeographyWellKnownValue: JSONEncodable {

    public var coordinateSystemId: Int32?
    public var wellKnownText: String?
    public var wellKnownBinary: Data?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["coordinateSystemId"] = self.coordinateSystemId?.encodeToJSON()
        nillableDictionary["wellKnownText"] = self.wellKnownText
        nillableDictionary["wellKnownBinary"] = self.wellKnownBinary?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
