//
// main.swift
//
// Created by Marcel Tesch on 2020-06-11.
// Think different.
//

import ArgumentParser

struct Bookmarks: ParsableCommand {

    static let configuration = CommandConfiguration(abstract: "Create and resolve bookmarks.", subcommands: [Create.self, Resolve.self])

}

Bookmarks.main()
