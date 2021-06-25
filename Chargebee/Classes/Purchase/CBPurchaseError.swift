//
//  CBPurchaseError.swift
//  Chargebee
//
//  Created by Imayaselvan on 23/05/21.
//

import Foundation


public enum CBPurchaseError: Error {
    case productIDNotFound
    case productsNotFound
    case skRequestFailed
    case cannotMakePayments
    case noProductToRestore
}

extension CBPurchaseError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .productIDNotFound: return "Product identifiers not found."
        case .productsNotFound: return "Products not found."
        case .skRequestFailed: return "Request Failed. Please try again."
        case .cannotMakePayments: return "User cannot make payments"
        case .noProductToRestore: return "No products found to restore."
        }
    }
}
