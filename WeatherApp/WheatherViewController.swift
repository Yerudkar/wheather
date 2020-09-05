//
//  WheatherViewController.swift
//  WeatherApp
//
//  Created by Madhuri Yerudkar on 05/09/20.
//  Copyright © 2020 loylty. All rights reserved.
//

import UIKit
import Alamofire
import CoreLocation

class WheatherViewController: UIViewController {
    
    @IBOutlet weak var lblInfo: UILabel!
    var lat : CLLocationDegrees?
    var lon : CLLocationDegrees?
    let apiKey = "4aac07ea0b395b7fc442ec9cda919f17"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchWheatherApi(lat: lat, lon: lon)
        self.title = "Wheather Information"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
}

extension WheatherViewController {
    func fetchWheatherApi(lat:CLLocationDegrees?,lon:CLLocationDegrees?) {
        print("http://api.openweathermap.org/data/2.5/weather?APPID=\(apiKey)&lat=\(lat ?? 0.0)&lon=\(lon ?? 0.0)")
   
        let request = AF.request("http://api.openweathermap.org/data/2.5/weather?APPID=\(apiKey)&lat=\(lat ?? 0.0)&lon=\(lon ?? 0.0)")
        
        request.responseDecodable(of: WheatherModel.self) { (response) in
          guard let wheatherData = response.value else { return }
            print(wheatherData)
                        
            self.lblInfo.text = "Name : \(wheatherData.name ?? "")\n humidity : \(wheatherData.main?.humidity ?? 0)\n Pressure : \(wheatherData.main?.pressure ?? 0)\n Temp : \(wheatherData.main?.temp ?? 0)\n Temp_max : \(wheatherData.main?.temp_max ?? 0)\n Temp_min : \(wheatherData.main?.temp_min ?? 0)\n Wheather : \(wheatherData.weather?[0].description ?? "")\n"
        }
  }
}
