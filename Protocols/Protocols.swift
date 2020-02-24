//
//  Protocols.swift
//  DecouplingByProtocolFramework
//
//  Created by Scardina, Kevin on 11/23/19.
//  Copyright © 2019 kscars. All rights reserved.
//

import Foundation

public var protocolFrameworkVersion: String {
    return Bundle(for: Observer.self).infoDictionary?["CFBundleShortVersionString"] as? String ?? "No dude"
}

public enum Events: String, CaseIterable {
    case one, two, three, four

    public enum OneFields: String {
        case name, timestame
    }

    public enum TwoFields: String {
        case name, timestame
    }

    public enum ThreeFields: String {
        case name, timestame
    }

    public enum FourFields: String {
        case name, timestame
    }

    public var name: Notification.Name {
        switch self {
        case .one: return .ObservableEventOne
        case .two: return .ObservableEventTwo
        case .three: return .ObservableEventThree
        case .four: return .ObservableEventFour
        }
    }
}

public extension Notification.Name {
    static var ObservableEventOne = Notification.Name(rawValue: "ObservableEventOne")
    static var ObservableEventTwo = Notification.Name(rawValue: "ObservableEventTwo")
    static var ObservableEventThree = Notification.Name(rawValue: "ObservableEventThree")
    static var ObservableEventFour = Notification.Name(rawValue: "ObservableEventFour")

    var event: Events {
        switch self {
        case .ObservableEventOne: return .one
        case .ObservableEventTwo: return .two
        case .ObservableEventThree: return .three
        case .ObservableEventFour: return .four
        default: return .one
        }
    }
}

@objc public protocol Observer {
    @objc var observable: Observable { get }
    @objc func observed(notification: Notification)
}

@objc public protocol Observable {
    @objc var protocolVersionString: String { get }
    @objc var center: NotificationCenter { get }
    @objc var queue: NotificationQueue { get }
    @objc func start()
    @objc func stop()
}
