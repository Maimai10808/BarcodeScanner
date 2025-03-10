//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner1
//
//  Created by mac on 3/10/25.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    
    @Published var scannedCode =  ""
    @Published var alertItem: AlertItem?
    
    
    var statusText: String {
        scannedCode.isEmpty ?
             "Not Yet Scanned" : scannedCode
    }
    
    var statusColor: Color {
        scannedCode.isEmpty ? .red : .green
        
    }
    
    
    
    
}
