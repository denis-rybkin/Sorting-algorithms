//
//  ViewController.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    let mainView = MainView()
    
    var algorithmType: SortAlgorithmType = .selection
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupMainView()
        
    }

    private func setupMainView() {
        
        let windowSettings = MainWindowSettings.shared
        let bezierViewFrame = NSRect(origin: .zero,
                                     size: windowSettings.contentSize)
        mainView.frame = bezierViewFrame
        self.view.addSubview(mainView)
        
    }
    
    @objc func sort() {
        
        var sorted = [Int]()
        
        switch algorithmType {
        case .selection:
            sorted = SelectionSort.sort(mainView.data)
        case .insertion:
            sorted = InsertionSort.sort(mainView.data)
        case .bubble:
            sorted = BubbleSort.sort(mainView.data)
        case .quick:
            sorted = QuickSort.sort(mainView.data)
        case .merge:
            sorted = MergeSort.sort(mainView.data)
        }
        
        mainView.data = sorted
        mainView.needsDisplay = true
        
    }
    
    @objc func newData() {
        
        mainView.data = RandomGenerator.createArray(length: 500)
        mainView.needsDisplay = true
        
    }
    
    @objc func changeAlgorithmType() {
        
        let typeIndex = mainView.sortTypeButton.indexOfSelectedItem
        algorithmType = SortAlgorithmType(rawValue: typeIndex)!
        mainView.needsDisplay = true
        
    }
    
}

