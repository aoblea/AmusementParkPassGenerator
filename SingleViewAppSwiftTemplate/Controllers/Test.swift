//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 1/1/19.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    do {
      
//      let classic = ClassicGuest()
//      try classic.swipe(pass: .classic, for: .amusement)
//      try classic.swipe(pass: .classic, atRegister: .food)
      
//      let vip = VIPGuest()
//      try vip.swipe(pass: .vip, atRegister: .merchandise)
//      try vip.swipe(pass: .vip, to: .skipRideLines)
      
//      // Change dateOfBirth to today's date for birthday swipe test
//      let freeChild = try FreeChildGuest(dateOfBirth: "07/21/2018")
//      try freeChild.swipe(pass: .freeChild, to: .allRides)
//      try freeChild.swipe(pass: .freeChild, atRegister: .food)
      
//      let foodService = try FoodServicesEmployee(firstName: "Johnny", lastName: "Smith", streetAddress: "1234 Fake Street", city: "NY", state: "NY", zipCode: "12345")
//      try foodService.swipe(pass: .foodServices, to: .allRides)
//      try foodService.swipe(pass: .foodServices, atRegister: .food)
      
//      let rideService = try RideServicesEmployee(firstName: "Jane", lastName: "Doe", streetAddress: "4321 Real Street", city: "CA", state: "CA", zipCode: "10654")
//      try rideService.swipe(pass: .rideServices, to: .allRides)
//      try rideService.swipe(pass: .rideServices, for: .office)

//      let maintenance = try MaintenanceEmployee(firstName: "Will", lastName: "Smith", streetAddress: "0921 Street", city: "MI", state: "MI", zipCode: "98765")
//      try maintenance.swipe(pass: .maintenance, for: .maintenance)
//      try maintenance.swipe(pass: .maintenance, atRegister: .merchandise)
      

//      let manager = try Manager(firstName: "Celine", lastName: "Mush", streetAddress: "8210 Street", city: "NY", state: "NY", zipCode: "12348")
//      try manager.swipe(pass: .manager, for: .office)
//      try manager.swipe(pass: .manager, atRegister: .food)
      
    } catch let error as ErrorType {
      print("\(error.description)")
    } catch {
      print("\(error)")
    }
}

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
