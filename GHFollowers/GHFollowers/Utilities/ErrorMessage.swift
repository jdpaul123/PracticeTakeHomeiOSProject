//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Jonathan Paul on 1/6/24.
//

import Foundation

/*
 Associated Values:
    value that is passed in to each case. It can be a bunch of values or a single value. The values can be any type(s)
    ex. "case upc(Int, Int, Int, Int); case qrcode(String)" -> The associated values are the Ints and String
 Raw Values:
    The enum can conform to a type such as String or Int. Each case can have a raw value that is of that type.
    ex. "enum Barcode: String { case upc = "UPC"; case qrcode = "QRCode" }" -> The raw values are "UPC" and "QRCode"
 */
enum ErrorMessage: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}
