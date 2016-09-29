//
//  JSONParser.swift
//  Truffaut
//
//  Created by Yan Li on 4/22/16.
//  Copyright © 2016 Codezerker. All rights reserved.
//

import Cocoa

struct JSONParser: DocumentDataParsing {

  func parse(data: Data) -> [Slides.PageJSON]? {
    let json = try? JSONSerialization.jsonObject(with: data, options: [])
    return json as? [Slides.PageJSON]
  }
  
}
