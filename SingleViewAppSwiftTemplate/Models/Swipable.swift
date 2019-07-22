//
//  Swipable.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Arwin Oblea on 7/21/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

protocol Swipable {
  var passHolderType: PassType? { get }
  
  var lastSwipedForArea: AreaType? { get }
  var lastSwipedToRide: RideType? { get }
  var lastSwipedAtRegister: DiscountType? { get }
  
  func swipe(pass: PassType, for area: AreaType) throws
  func swipe(pass: PassType, to ride: RideType) throws
  func swipe(pass: PassType, atRegister: DiscountType) throws
}
