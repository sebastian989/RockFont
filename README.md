# RockFont (Beta)

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![codecov.io](https://codecov.io/github/andresilvagomez/RockFont/coverage.svg?branch=master)](https://codecov.io/github/andresilvagomez/RockFont?branch=master)
[![CocoaPods](https://img.shields.io/cocoapods/v/RockFont.svg)](https://cocoapods.org/pods/RockFont)
[![Build Status](https://travis-ci.org/andresilvagomez/RockFont.svg?branch=master)](https://travis-ci.org/andresilvagomez/RockFont)
[![Language](https://img.shields.io/badge/language-Swift%204.1-orange.svg)](https://swift.org)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Kekiiwaa/RockFont/master/LICENSE)
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/vsouza/awesome-ios)

RockFont is a framework written in swift to change easier and fast all fonts in your app.
___

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Credits](#credits)
- [License](#license)

## Features

- [x] Change your all Fonts in your app with one line.
- [x] List all avaiable fonts.

## Requirements

- iOS 9.0+
- Xcode 8.0+
- Swift 3.0+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1.0+ is required to build RockFont 1.+.

To integrate RockFont into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'RockFont' , '~> 0.0.2'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate RockFont into your Xcode project using Carthage, specify it in your `Cartfile`:

```
github "andresilvagomez/RockFont"
```

Run `carthage update` to build the framework and drag the built `RockFont.framework` into your Xcode project.

### Swift Pacakge Manager

The [Swift Pacakage Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

Once you have your Swift package set up, adding RockFont as a dependency is as easy as adding it to the dependencies value of your Package.swift.

```swift
dependencies: [
    .Package(url: "https://github.com/andresilvagomez/RockFont.git")
]
```

---

## Usage

Please include your fonts in your app, [tutorial here](https://medium.com/yay-its-erica/how-to-import-fonts-into-xcode-swift-3-f0de7e921ef8)

Add these lines in your app delegate and it's all enjoy your font.

```swift

import RockFont

```

```swift

RockFont.setDefaultFont("Montserrat")

```

Please keep in the storyboard the system font, It will change all fonts for your expected, but for example is you modify the style, It will change the font with this style.

For example if you have in your storyboard `System Semibold 17.0` the result is `Montserrat Semibold 17.0`

If your font don't have a Semibold or you don't include this it will use the default `Montserrat 17.0`

---

## Credits

[Andres Silva Gomez](https://github.com/andresilvagomez)

## License

RockFont is released under the MIT license. See LICENSE for details.
