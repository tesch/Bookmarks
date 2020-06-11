//
// URL.swift
//
// Created by Marcel Tesch on 2020-06-11.
// Think different.
//

import Foundation

extension URL {

    static func createBookmark(of source: URL, at target: URL) throws {
        let bookmark = try source.bookmarkData(options: [.suitableForBookmarkFile])

        try writeBookmarkData(bookmark, to: target)
    }

    static func resolveBookmark(at target: URL) throws -> URL {
        let bookmark = try bookmarkData(withContentsOf: target)

        var flag = false

        let source = try URL(resolvingBookmarkData: bookmark, bookmarkDataIsStale: &flag)

        if flag {
            do {
                try createBookmark(of: source, at: target)
            } catch {

            }
        }

        return source
    }

}
