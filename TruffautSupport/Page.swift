//
//  Page.swift
//  Truffaut
//
//  Created by Yan Li on 4/3/17.
//  Copyright © 2017 Codezerker. All rights reserved.
//

import Foundation

public struct Page: Codable {
    
    public let title: String?
    public let subtitle: String?
    public let contents: [Content]?
    public let nexts: [[Content]]?
    
    public init(title: String? = nil, subtitle: String? = nil, contents: [Content]? = nil,nexts: [[Content]]? = nil) {
        self.title = title
        self.subtitle = subtitle
        self.contents = contents
        self.nexts = nexts
    }
    
    public func flatNext() -> [Page] {
        
        var results = [self]
        let _ = nexts?.reduce(contents ?? [], { (result, contents) -> [Content] in
            let combined = result + (contents )
            let page = Page(title: self.title, subtitle: self.subtitle, contents: combined, nexts: nil)
            results.append(page)
            return combined
        })
        
        return results
    
    }
}
