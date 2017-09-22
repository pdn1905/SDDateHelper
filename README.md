# SDDateHelper

[![CI Status](http://img.shields.io/travis/pdn1905/SDDateHelper.svg?style=flat)](https://travis-ci.org/pdn1905/SDDateHelper)
[![Version](https://img.shields.io/cocoapods/v/SDDateHelper.svg?style=flat)](http://cocoapods.org/pods/SDDateHelper)
[![License](https://img.shields.io/cocoapods/l/SDDateHelper.svg?style=flat)](http://cocoapods.org/pods/SDDateHelper)
[![Platform](https://img.shields.io/cocoapods/p/SDDateHelper.svg?style=flat)](http://cocoapods.org/pods/SDDateHelper)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SDDateHelper is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SDDateHelper', :git => https://github.com/pdn1905/SDDateHelper
```
How to use:
```ruby
Import SDDateHelper
```

Math with Date:
```ruby
let today = Date() // 21-09-2017 📅
let nextDay = today + 1.day => 22-09-2017 // same with minutes, hours, months, years..
```
Compare between Dates:
```ruby
let today = Date() // 21-09-2017
let nextDay = today + 1.day => 22-09-2017 
let bool = today < nextDay => return true
```
Get Network time (if failed return device time):

```ruby
SDTime().getNetworkTime { (date) in
    print(date) => return sync network time.
}
```
Custom services:

```ruby
SDTime().getNetworkTime(with: ["time1.google.com","time2.google.com"]) { (date) in
  print(date) => return sync network time.
}
```

```ruby
  let now = SDTime().now => sync network time.
```
## From Ngoc With Love.
## Author

NgocPhan😻, ngoc.phan@smartdev.vn

## License

SDDateHelper is available under the MIT license. See the LICENSE file for more info.
