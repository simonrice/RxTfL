//
// OccupancyAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import RxSwift



open class OccupancyAPI: APIBase {
    /**
     Gets the occupancy for a car park with a given id
     
     - parameter id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func occupancyGet(id: String, completion: @escaping ((_ data: CarParkOccupancy?,_ error: Error?) -> Void)) {
        occupancyGetWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Gets the occupancy for a car park with a given id
     
     - parameter id: (path)  
     - returns: Observable<CarParkOccupancy>
     */
    open class func occupancyGet(id: String) -> Observable<CarParkOccupancy> {
        return Observable.create { observer -> Disposable in
            occupancyGet(id: id) { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return Disposables.create()
        }
    }

    /**
     Gets the occupancy for a car park with a given id
     - GET /Occupancy/CarPark/{id}
     - examples: [{contentType=application/json, example={
  "carParkDetailsUrl" : "aeiou",
  "bays" : [ {
    "bayCount" : 123,
    "free" : 123,
    "bayType" : "aeiou",
    "occupied" : 123
  } ],
  "name" : "aeiou",
  "id" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <id>aeiou</id>
  <name>aeiou</name>
  <carParkDetailsUrl>aeiou</carParkDetailsUrl>
</null>}]
     - examples: [{contentType=application/json, example={
  "carParkDetailsUrl" : "aeiou",
  "bays" : [ {
    "bayCount" : 123,
    "free" : 123,
    "bayType" : "aeiou",
    "occupied" : 123
  } ],
  "name" : "aeiou",
  "id" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <id>aeiou</id>
  <name>aeiou</name>
  <carParkDetailsUrl>aeiou</carParkDetailsUrl>
</null>}]
     
     - parameter id: (path)  

     - returns: RequestBuilder<CarParkOccupancy> 
     */
    open class func occupancyGetWithRequestBuilder(id: String) -> RequestBuilder<CarParkOccupancy> {
        var path = "/Occupancy/CarPark/{id}"
        path = path.replacingOccurrences(of: "{id}", with: id.asParameter, options: .literal, range: nil)
        let URLString = RxTfLAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CarParkOccupancy>.Type = RxTfLAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Gets the occupancy for all car parks that have occupancy data
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func occupancyGet_0(completion: @escaping ((_ data: [CarParkOccupancy]?,_ error: Error?) -> Void)) {
        occupancyGet_0WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Gets the occupancy for all car parks that have occupancy data
     
     - returns: Observable<[CarParkOccupancy]>
     */
    open class func occupancyGet_0() -> Observable<[CarParkOccupancy]> {
        return Observable.create { observer -> Disposable in
            occupancyGet_0() { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return Disposables.create()
        }
    }

    /**
     Gets the occupancy for all car parks that have occupancy data
     - GET /Occupancy/CarPark
     - examples: [{contentType=application/json, example=[ {
  "carParkDetailsUrl" : "aeiou",
  "bays" : [ {
    "bayCount" : 123,
    "free" : 123,
    "bayType" : "aeiou",
    "occupied" : 123
  } ],
  "name" : "aeiou",
  "id" : "aeiou"
} ]}, {contentType=application/xml, example=<null>
  <id>aeiou</id>
  <name>aeiou</name>
  <carParkDetailsUrl>aeiou</carParkDetailsUrl>
</null>}]
     - examples: [{contentType=application/json, example=[ {
  "carParkDetailsUrl" : "aeiou",
  "bays" : [ {
    "bayCount" : 123,
    "free" : 123,
    "bayType" : "aeiou",
    "occupied" : 123
  } ],
  "name" : "aeiou",
  "id" : "aeiou"
} ]}, {contentType=application/xml, example=<null>
  <id>aeiou</id>
  <name>aeiou</name>
  <carParkDetailsUrl>aeiou</carParkDetailsUrl>
</null>}]

     - returns: RequestBuilder<[CarParkOccupancy]> 
     */
    open class func occupancyGet_0WithRequestBuilder() -> RequestBuilder<[CarParkOccupancy]> {
        let path = "/Occupancy/CarPark"
        let URLString = RxTfLAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[CarParkOccupancy]>.Type = RxTfLAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
