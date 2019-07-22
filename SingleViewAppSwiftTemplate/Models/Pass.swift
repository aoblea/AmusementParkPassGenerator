//
//  Pass.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Arwin Oblea on 7/5/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

enum PassType {
  case classic
  case vip
  case freeChild
  case foodServices
  case rideServices
  case maintenance
  case manager
  
  func evaluatePassForAreaAccess() -> [AreaType] {
    switch self {
    case .classic:
      return [.amusement]
    case .vip:
      return [.amusement]
    case .freeChild:
      return [.amusement]
    case .foodServices:
      return [.amusement, .kitchen]
    case .rideServices:
      return [.amusement, .rideControl]
    case .maintenance:
      return [.amusement, .kitchen, .rideControl, .maintenance]
    case .manager:
      return [.amusement, .kitchen, .rideControl, .maintenance, .office]
    }
  }
  
  func evaluatePassForRideAccess() -> [RideType] {
    switch self {
    case .classic, .freeChild, .foodServices, .rideServices, .maintenance, .manager:
      return [.allRides]
    case .vip:
      return [.allRides, .skipRideLines]
    }
  }
  
  func evaluatePassForDiscountAccess() -> [DiscountType] {
    switch self {
    case .classic, .freeChild:
      return []
    case .vip, .foodServices, .rideServices, .maintenance, .manager:
      return [.food, .merchandise]
    }
  }
}
