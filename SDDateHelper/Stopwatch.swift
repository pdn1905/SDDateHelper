//
//  Stopwatch.swift
//  Pods
//
//  Created by Ngoc Duong Phan on 9/22/17.
//
//

import Foundation

public struct Stopwatch {
  private var startTime: TimeInterval

  public init() {
    startTime = CACurrentMediaTime()
  }

  public mutating func reset() {
    startTime = CACurrentMediaTime()
  }

  public func elapsedTimeInterval() -> TimeInterval {
    return CACurrentMediaTime() - startTime
  }

  public func elapsedTimeString() -> String {
    let interval = elapsedTimeInterval()
    return NSString(format:"%.2f", Double(interval)) as String
  }

  public func elapsedTimeInt() -> Int {
    let interval = elapsedTimeInterval()
    return Int(interval)
  }
}

extension Stopwatch: CustomStringConvertible {
  public var description: String {
    return elapsedTimeString()
  }
  public var elapsedTime: Int {
    return elapsedTimeInt()
  }
}
