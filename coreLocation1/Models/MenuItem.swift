//
//  MenuItem.swift
//  coreLocation1
//
//  Created by Digital on 26/08/21.
//

import Foundation

struct MenuItem {
  let id = UUID()
  var name: String
  var imageName: String
  var price: Double
}

// MARK: - Menu Items
let menuItems: [MenuItem] = [
  MenuItem(name: "Margherita Pizza SE", imageName: "cheese-pizza-small", price: 7.00),
  MenuItem(name: "Margherita Pizza Max", imageName: "cheese-pizza", price: 10.00),
  MenuItem(name: "Margherita Pizza Max Pro", imageName: "cheese-pizza", price: 12.00),
  MenuItem(name: "Chicken Pizza SE", imageName: "chicken-pizza-small", price: 8.00),
  MenuItem(name: "Chicken Pizza Max", imageName: "chicken-pizza", price: 11.00),
  MenuItem(name: "Chicken Pizza Max Pro", imageName: "chicken-pizza", price: 14.00),
  MenuItem(name: "Pepperoni Pizza SE", imageName: "pep-pizza-small", price: 7.00),
  MenuItem(name: "Pepperoni Pizza Max", imageName: "pep-pizza", price: 11.00),
  MenuItem(name: "Pepperoni Pizza Max Pro", imageName: "pep-pizza", price: 14.00),
  MenuItem(name: "Swifty Shake Series 6", imageName: "shake", price: 3.50),
  MenuItem(name: "Swifty Shake SE", imageName: "shake", price: 2.00),
  MenuItem(name: "Swifty Shake Series 3", imageName: "shake", price: 2.75)
]
