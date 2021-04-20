//
//  Book.swift
//  Books
//
//  Created by Frank Solleveld on 20/04/2021.
//

import Foundation

struct Books: Decodable {
    let items: [BookItem]
}

struct BookItem: Decodable {
    let id: String
    let volumeInfo: VolumeInfo
}

struct VolumeInfo: Decodable {
    let title: String
    let subtitle: String?
    let authors: [String]
    let publishedDate: String
    let pageCount: Int
    let language: String
}
