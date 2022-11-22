//
//  SmartISODateFormatter+DateDecodingStrategy.swift
//  
//
//  Created by Alessio Moiso on 22.11.22.
//

import Foundation

// See also:
// https://stackoverflow.com/a/65974768/925537
public extension JSONDecoder.DateDecodingStrategy {
  static var smartISO8601 = custom { decoder in
    let input = try decoder.singleValueContainer().decode(String.self)
    
    guard let date = SmartISODateFormatter().date(from: input) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Invalid Date"
        )
      )
    }
    
    return date
  }
}
