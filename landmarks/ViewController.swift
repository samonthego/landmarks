//
//  ViewController.swift
//  landmarks
//
//  Created by Samuel MCDONALD on 3/6/17.
//  Copyright © 2017 Samuel MCDONALD. All rights reserved.
//


import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    
    
    
    
    @IBOutlet var landMark     :MKMapView!
    
    var locationMgr = CLLocationManager()

    var happening = [HappeningInDetroit]()
    
    
    
    
    
    //MARK: - Map View Methods
    
    func zoomToPins() {
        landMark.showAnnotations(landMark.annotations, animated: true)
    }
    
    func zoomToLocation(lat: Double, lon: Double, radius: Double){
        if lat == 0 && lon == 0 {
            print("Invalid Data")
        }else{
            let coord = CLLocationCoordinate2D(latitude: lat, longitude: lon)
            let viewRegion = MKCoordinateRegionMakeWithDistance(coord, radius, radius)
            let adjustedRegion = landMark.regionThatFits(viewRegion)
            landMark.setRegion(adjustedRegion, animated: true)
        }
    }
    
    
    func annotateMapLocations() {
        var pinsToRemove = [MKPointAnnotation]()
        for annotation in landMark.annotations {
            if annotation is MKPointAnnotation{
                pinsToRemove.append(annotation as! MKPointAnnotation)
            }
        }
        landMark.removeAnnotations(pinsToRemove)
        
        for here in happening{
            let pa = MKPointAnnotation()
            let lat = Double(here.locLatitude) ?? 0.0
            let long = Double(here.locLongitude) ?? 0.0
            print("lat and long \(lat) \(long)")
            pa.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
            pa.title = here.name
            pa.subtitle = here.streetAddress
            landMark.addAnnotation(pa)
        }
       /*
        let pa1 = MKPointAnnotation()
        pa1.coordinate = CLLocationCoordinate2D(latitude: 42, longitude: -83)
        pa1.title = "Southen Ontario Waterfront"
        pa1.subtitle =  "Wow it's nice"
        
        let pa2 = MKPointAnnotation()
        pa2.coordinate = CLLocationCoordinate2D(latitude: 42.123, longitude: -83.123)
        pa2.title = "somewhere someplace:"
        pa2.subtitle = "who knows"
        
        
        let pa3 = MKPointAnnotation()
        pa3.coordinate = CLLocationCoordinate2D(latitude: 42.234, longitude: -83.234)
        pa3.title = "annagodadavita"
        pa3.subtitle = " fooo!"
 
        landMark.addAnnotations([pa1, pa2, pa3 ]) */
        zoomToPins()
        
    }
    
    func setUpInVC(){
        let h1 = HappeningInDetroit(name:"Greek Town Casino",
                                            locDescription:"Contemporary hotel with a sprwaling casino & a high-end steakhouse, plus 2 bars",
                                            streetAddress :"555 E. Lafayette St.",
                                            city          :"Detroit",
                                            state         :"Mi",
                                            zip           :"48226",
                                            locLatitude   :"42.334718",
                                            locLongitude  :"-83.041353")
        happening.append(h1)
        let h2 = HappeningInDetroit(name:"Motor City Casino",
                                    locDescription:"Slick venue with car-themed decor offering gambling, bars & restaurants, plus a spa & meeting space",
                                    streetAddress :"2901 Grand River Ave.",
                                    city          :"Detroit",
                                    state         :"Mi",
                                    zip           :"48201",
                                    locLatitude   :"42.339048",
                                    locLongitude  :"-83.068658")
        happening.append(h2)
        let h3 = HappeningInDetroit(name:"MGM Grand Detroit",
                                    locDescription:"Sleek rooms & suites in a posh casino hotel offering high-energy nightclubs , shopping and dining.",
                                    streetAddress :"1777 3rd Ave.",
                                    city          :"Detroit",
                                    state         :"Mi",
                                    zip           :"48226",
                                    locLatitude   :"42.333468",
                                    locLongitude  :"-83.060299")
        happening.append(h3)
        let h4 = HappeningInDetroit(name:"Michigan Science Center",
                                    locDescription:"Science & technology museum for kids offers interactive exhibits, a  planetarium,  shows, and a cafe",
                                    streetAddress :"5020 John R. St.",
                                    city          :"Detroit",
                                    state         :"Mi",
                                    zip           :"48202",
                                    locLatitude   :"42.358418",
                                    locLongitude  :"-83.062416")
        happening.append(h4)
        let h5 = HappeningInDetroit(name:"Ford Field",
                                    locDescription:"Lions home stadium offering behind-the-scenes NFL tours & an attached 1920's warehouse",
                                    streetAddress :"2000 Brush Street",
                                    city          :"Detroit",
                                    state         :"Mi",
                                    zip           :"48226",
                                    locLatitude   :"42.339894",
                                    locLongitude  :"-83.045618")
        happening.append(h5)
        let h6 = HappeningInDetroit(name:"Comerica Park",
                                    locDescription:"Baseball stadium features tiger statues on top, a 50ft ferris wheel & diverse food court.",
                                    streetAddress :"2100 Woodward Av.",
                                    city          :"Detroit",
                                    state         :"Mi",
                                    zip           :"48201",
                                    locLatitude   :"42.338759",
                                    locLongitude  :"-83.050273")
        happening.append(h6)
        let h7 = HappeningInDetroit(name:"Mariners Church",
                                    locDescription:"Blessing of the Fleet every March, and a memorial service for those lost at sea every November",
                                    streetAddress :"170 E. Jefferson Ave",
                                    city          :"Detroit",
                                    state         :"Mi",
                                    zip           :"48226",
                                    locLatitude   :"42.329218",
                                    locLongitude  :"-83.042056")
        happening.append(h7)
        let h8 = HappeningInDetroit(name:"Joe Louis Arena",
                                    locDescription:"Home of the Detroit Redwings of the National Hockey Leauge, while also hosting other events.",
                                    streetAddress :"600 Civic Center Dr",
                                    city          :"Detroit",
                                    state         :"Mi",
                                    zip           :"48226",
                                    locLatitude   :"42.3250009",
                                    locLongitude  :"-83.05227")
        happening.append(h8)
        let h9 = HappeningInDetroit(name:"Motown Museum",
                                    locDescription:"Collection of the label's art & memorabilia plus infamous studio A & the Supremes'  costumes",
                                    streetAddress :"2648 W. Grand Blvd.",
                                    city          :"Detroit",
                                    state         :"Mi",
                                    zip           :"48208",
                                    locLatitude   :"42.364078",
                                    locLongitude  :"-83.088401")
        happening.append(h9)
        let h10 = HappeningInDetroit(name:"Charles H. Wright Museum of African American History",
                                    locDescription:"Exhibits explore African-American history from the Middle Passage to the Underground Railroad.",
                                    streetAddress :"315 E. Warren Ave.",
                                    city          :"Detroit",
                                    state         :"Mi",
                                    zip           :"48202",
                                    locLatitude   :"42.359203",
                                    locLongitude  :"-83.060914")
         happening.append(h10)
    }
    
    
    
    //MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInVC()
        annotateMapLocations()
        setupLocationMonitoring()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}

extension ViewController: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lastLoc = locations.last!
        print ("Last Loc: \(lastLoc.coordinate.latitude),\(lastLoc.coordinate.longitude)")
        zoomToLocation(lat: lastLoc.coordinate.latitude, lon: lastLoc.coordinate.longitude, radius: 500.0)
        manager.stopUpdatingLocation()
    }
    
    //Mark: - Location Authorization Methods
    func turnOnLocationMonitoring(){
        locationMgr.startUpdatingLocation()
        landMark.showsUserLocation = true
    }
    
    
    func setupLocationMonitoring(){
        locationMgr.delegate = self
        locationMgr.desiredAccuracy = kCLLocationAccuracyBest
        
        if CLLocationManager.locationServicesEnabled(){
            switch CLLocationManager.authorizationStatus() {
            case .authorizedAlways, .authorizedWhenInUse:
                turnOnLocationMonitoring()
            case .denied, .restricted:
                print("Hey turn us back on in Settings!")
            case .notDetermined:
                if locationMgr.responds(to: #selector(CLLocationManager.requestAlwaysAuthorization)){
                    locationMgr.requestAlwaysAuthorization()
                }
            }
        }else{
            print("Hey turn us back on in Settings!")        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        setupLocationMonitoring()
    }
}
