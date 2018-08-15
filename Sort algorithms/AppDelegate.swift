//
//  AppDelegate.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        setupWindow()
        
    }

    func setupWindow() {
        let windowSettings = MainWindowSettings.shared
        let mainWindow = NSApplication.shared.windows[0]
        mainWindow.acceptsMouseMovedEvents = true
        mainWindow.title = "Swift sort algorithms"
        windowSettings.applyFor(mainWindow)
    }


}

