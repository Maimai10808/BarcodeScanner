//
//  Alert.swift
//  BarcodeScanner1
//
//  Created by mac on 3/10/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invaildDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with the camera.", dismissButton: .default(Text("OK")))
    
    static let invaildScannedType = AlertItem(title: "Invalid Scan Type", message: "Something is wrong with Scan type.", dismissButton: .default(Text("OK")))
                                              
                                              
                                              
}

