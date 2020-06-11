//
// Resolve.swift
//
// Created by Marcel Tesch on 2020-06-11.
// Think different.
//

import Foundation

import ArgumentParser

struct Resolve: ParsableCommand {

    static let configuration = CommandConfiguration(abstract: "Resolve a bookmark.")

    @Argument(transform: URL.init(fileURLWithPath:))
    var target: URL

    func run() throws {
        let source = try URL.resolveBookmark(at: target)

        print(source.path)
    }

}
