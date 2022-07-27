//
//  Model+Identifable.swift
//  PagHW
//
//  Created by Александр on 26.07.2022.
//

import Foundation
import NetworkLayer

extension Description: Identifiable {
    public var id: String { name }
}

