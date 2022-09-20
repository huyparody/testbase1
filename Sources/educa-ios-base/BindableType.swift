//  BindableType.swift
//  edupia-tutor-teacher
//
//  Created by Huy Trinh Duc on 05/08/2022.
//  Copyright (c) 2022 Educa Corp. All rights reserved.
//
//  This file was generated by the Educa MVVM-C Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  Template created by huyparody - huytd@educa.vn

import Foundation
import UIKit
import RxSwift

public protocol BindableType: AnyObject {
    associatedtype ViewModelType

    var viewModel: ViewModelType! { get set }

    func bindViewModel()
    
}

extension BindableType where Self: UIViewController {
    func bind(to model: Self.ViewModelType) {
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
}

extension BindableType where Self: UITableViewCell {
    func bind(to model: Self.ViewModelType) {
        viewModel = model
        bindViewModel()
    }
}

extension BindableType where Self: UICollectionViewCell {
    func bind(to model: Self.ViewModelType) {
        viewModel = model
        bindViewModel()
    }
}

public protocol EducaViewModel {
    associatedtype Input
    associatedtype Output
    
    func transform(input: Input) -> Output
}


open class EducaViewController<T: EducaViewModel>: UIViewController, BindableType {
 
    open var viewModel: T!
    
    open func bindViewModel() {
        
    }
    
//    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
//        super.traitCollectionDidChange(previousTraitCollection)
//        applyTheme()
//    }

//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: true)
//        applyTheme()
//    }
    
//    func applyTheme() {
//        view.backgroundColor = ThemeManager.shared.current.backgroundColor
//    }
//
//    func catchThemeObserver() {
//        NotificationCenter.default.addObserver(self, selector: #selector(reloadTheme), name: .init(rawValue: EducaConstants.NotificationName.ThemeUpdate), object: nil)
//    }
//
//    @objc private func reloadTheme() {
//        applyTheme()
//    }
}

class EducaTableViewController<T: EducaViewModel>: UITableViewController, BindableType {
 
    var viewModel: T!
    
    func bindViewModel() {
        
    }
    
}

class EducaCollectionViewController<T: EducaViewModel>: UICollectionViewController, BindableType {
 
    var viewModel: T!
    
    func bindViewModel() {
        
    }
    
}
