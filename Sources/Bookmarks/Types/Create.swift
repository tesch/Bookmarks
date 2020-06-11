//
// Create.swift
//
// Created by Marcel Tesch on 2020-06-11.
// Think different.
//

import Foundation

import ArgumentParser

struct Create: ParsableCommand {

    static let configuration = CommandConfiguration(abstract: "Create a bookmark.")

    @Argument(transform: URL.init(fileURLWithPath:))
    var source: URL

    @Argument(transform: URL.init(fileURLWithPath:))
    var target: URL

    func run() throws {
        try URL.createBookmark(of: source, at: target)
    }

}
