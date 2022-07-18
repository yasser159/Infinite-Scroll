//
//  APICaller.swift
//  Infinite Scroll
//
//  Created by Yasser Hajlaoui on 7/17/22.
//

import Foundation

class APICaller{
    public var isPaginating = false
    func fetchData(pagination: Bool = false, completion: @escaping (Result<[String], Error>) -> Void) {
        
        if pagination {
            isPaginating = true
        }
        
        DispatchQueue.global().asyncAfter(deadline: .now() + (pagination ? 3 : 2), execute: {
            let originalData = [
                "Apple",
                "Google",
                "Facebook",
                "Apple",
                "Google",
                "Facebook",
                "Apple",
                "Google",
                "Apple",
                "Google",
                "Facebook",
                "Apple",
                "Google",
                "Facebook",
                "Apple",
                "Google",
                "Apple",
                "Google",
                "Facebook",
                "Apple",
                "Google",
                "Facebook",
                "Apple",
                "Google"
                
            ]
            
            let newData = [
                "banana", "orange", "grapes", "Food"]
            
            completion(.success(pagination ? newData : originalData))
            if pagination {
                self.isPaginating = false
            }
        })
        
    }

}
