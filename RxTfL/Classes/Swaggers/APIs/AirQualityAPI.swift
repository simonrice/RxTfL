//
// AirQualityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import RxSwift



open class AirQualityAPI: APIBase {
    /**
     Gets air quality data feed
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func airQualityGet(completion: @escaping ((_ data: Object?,_ error: Error?) -> Void)) {
        airQualityGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Gets air quality data feed
     
     - returns: Observable<Object>
     */
    open class func airQualityGet() -> Observable<Object> {
        return Observable.create { observer -> Disposable in
            airQualityGet() { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Gets air quality data feed
     - GET /AirQuality
     - examples: [{contentType=application/json, example={ }}, {contentType=application/xml, example=<null>
</null>}]
     - examples: [{contentType=application/json, example={ }}, {contentType=application/xml, example=<null>
</null>}]

     - returns: RequestBuilder<Object> 
     */
    open class func airQualityGetWithRequestBuilder() -> RequestBuilder<Object> {
        let path = "/AirQuality"
        let URLString = RxTfLAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Object>.Type = RxTfLAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
