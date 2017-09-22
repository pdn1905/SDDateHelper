//
//  SDDateHelper.swift
//  Pods
//
//  Created by Ngoc Duong Phan on 9/22/17.
//
//

import Foundation
import NTPKit

extension Int {
  public var seconds: DateComponents {
    var comps = DateComponents()
    comps.second = self
    return comps
  }

  public var second: DateComponents {
    return self.seconds
  }

  public var minutes: DateComponents {
    var comps = DateComponents()
    comps.minute = self
    return comps
  }

  public var minute: DateComponents {
    return self.minute
  }

  public var hours: DateComponents {
    var comps = DateComponents()
    comps.hour = self
    return comps
  }

  public var hour: DateComponents {
    return self.hours
  }

  public var days: DateComponents {
    var comps = DateComponents()
    comps.day = self
    return comps
  }

  public var day: DateComponents {
    return self.days
  }

  public var weeks: DateComponents {
    var comps = DateComponents()
    comps.day = 7 * self
    return comps
  }

  public var week: DateComponents {
    return self.weeks
  }

  public var months: DateComponents {
    var comps = DateComponents()
    comps.month = self
    return comps
  }

  public var month: DateComponents {
    return self.months
  }

  public var quarters: DateComponents {
    var comps = DateComponents()
    comps.month = 4 * self
    return comps
  }

  public var quarter: DateComponents {
    return quarters
  }

  public var years: DateComponents {
    var comps = DateComponents()
    comps.year = self
    return comps
  }

  public var year: DateComponents {
    return self.years
  }
}

prefix func -(components: DateComponents) -> DateComponents {
  var result = DateComponents()
  let undefined = Int(NSDateComponentUndefined)
  if let compsSecond = components.second, compsSecond != undefined {
    result.second = -compsSecond
  }
  if let compsMinute = components.minute, compsMinute != undefined {
    result.minute = -compsMinute
  }
  if let compsHour = components.hour, compsHour != undefined {
    result.hour = -compsHour
  }
  if let compsDay = components.day, compsDay != undefined {
    result.day = -compsDay
  }
  if let compsMonth = components.month, compsMonth != undefined {
    result.month = -compsMonth
  }
  if let compsYear = components.year, compsYear != undefined {
    result.year = -compsYear
  }
  return result
}

public func +(lhs: Date, rhs: DateComponents) -> Date {
  return Calendar.current.date(byAdding: rhs, to: lhs)!
}

public func +(lhs: DateComponents, rhs: Date) -> Date {
  return rhs + lhs
}

public func -(lhs: Date, rhs: DateComponents) -> Date {
  return lhs + (-rhs)
}


