//
//  ScannerView.swift
//  BarcodeScanner1
//
//  Created by mac on 3/10/25.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?
    
   
    
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerview: self)
    }
        
    final class Coordinator: NSObject, ScannerVCDelegate {
        
        private let scannerview: ScannerView
        
        init(scannerview: ScannerView) {
            self.scannerview = scannerview
        }
        
        
            func didFind(barcode: String) {
                scannerview.scannedCode = barcode
             
                
//              scannedCode = barcode
            }
            
        func didSurface(error: CameraError) {
            switch error {
            case .invalidDeviceInput:
                scannerview.alertItem = AlertContext.invaildDeviceInput
            case .invalidScannedValue:
                scannerview.alertItem = AlertContext.invaildScannedType
            }
            }
        }
    
}


