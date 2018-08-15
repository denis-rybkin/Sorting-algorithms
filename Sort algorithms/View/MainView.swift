//
//  MainView.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Cocoa

class MainView: NSView {
    
    let spacingFromWindowBounds: CGFloat = 50
    
    var data = RandomGenerator.createArray(length: 500)
    
    let sortButton: NSButton = {
        let button = NSButton()
        button.frame        = NSRect(x: 110, y: 5,
                                     width: 50,
                                     height: 30)
        button.bezelStyle   = .roundRect
        button.title        = "sort"
        button.action       = #selector(ViewController.sort)
        return button
    }()
    let newDataButton: NSButton = {
        let button = NSButton()
        button.frame        = NSRect(x: 10, y: 5,
                                     width: 70,
                                     height: 30)
        button.bezelStyle   = .roundRect
        button.title        = "new data"
        button.action       = #selector(ViewController.newData)
        return button
    }()
    let sortTypeButton: NSPopUpButton = {
        let popUpButton = NSPopUpButton()
        popUpButton.frame = NSRect(x: 190,
                                   y: 10,
                                   width: 100, height: 22)
        popUpButton.addItem(withTitle: "selection")
        popUpButton.addItem(withTitle: "insertion")
        popUpButton.addItem(withTitle: "bubble")
        popUpButton.addItem(withTitle: "quick")
        popUpButton.addItem(withTitle: "merge")
        //        popUpButton.action = #selector(ViewController.changePreset)
        return popUpButton
    }()
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        addSubview(sortButton)
        addSubview(newDataButton)
        addSubview(sortTypeButton)
    }
    
    required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        drawDataViewBounds()
        drawDataDiagram()
        
    }
    
    
    func drawDataViewBounds() {
        
        let width = self.bounds.width - (spacingFromWindowBounds * 2)
        let height = self.bounds.height - (spacingFromWindowBounds * 2)
        let boundsRect = NSRect(x: spacingFromWindowBounds,
                                y: spacingFromWindowBounds,
                                width: width,
                                height: height)
        let bounds = NSBezierPath(roundedRect: boundsRect,
                                  xRadius: 2,
                                  yRadius: 2)
        NSColor.lightGray.set()
        bounds.stroke()
        
    }
    
    
    func drawDataDiagram() {
        
        let dataDiagram = NSBezierPath()
        let startPoint = CGPoint(x: spacingFromWindowBounds,
                                 y: spacingFromWindowBounds)
        dataDiagram.move(to: startPoint)
        
        let dataDiagramCGWidth = self.bounds.width - (spacingFromWindowBounds * 2)
        let dataDiagramCGHeight = self.bounds.height - (spacingFromWindowBounds * 2)
        
        let xMultiplier = CGFloat(dataDiagramCGWidth / 500)
        let yMultiplier = CGFloat(dataDiagramCGHeight / 100)
        
        for (i, point) in data.enumerated() {
            
            
            
            
            let x = (CGFloat(i + 1) * xMultiplier) + spacingFromWindowBounds
            let y = CGFloat(point) * yMultiplier + spacingFromWindowBounds
            let nextPoint = CGPoint(x: x, y: y)
            
            let lowPoint = CGPoint(x: x, y: spacingFromWindowBounds)
            
            dataDiagram.line(to: lowPoint)
            dataDiagram.line(to: nextPoint)
            dataDiagram.line(to: lowPoint)
            
        }
        
        NSColor.darkGray.set()
        dataDiagram.stroke()
        
    }
    
}








