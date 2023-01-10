//
//  DateFormatter.swift
//  MedicationManager
//
//  Created by Stef Castillo on 12/20/22.
//

import Foundation

extension DateFormatter {
    static let medicationTime: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter
    }()
}
