<p align="center">
    <img src="Logo.png" width="250", max-width="100%"/>
</p>

**Bookmarks** is a command line utility for creating and resolving bookmarks of files and directories. Bookmarks, or *aliases*, are similar to symlinks, with the added benefit that they keep working even if the item they point to gets renamed and / or moved. They are usually created by invoking a contextual menu item or by command-option-dragging the item in the Finder. Though their format [isn't completely documented](https://en.wikipedia.org/wiki/Alias_(Mac_OS)#File_structure), we can leverage some Foundation APIs to create them programmatically and make them a little more convenient to deal with.

## Usage

The interface consists of the two subcommands `create <source> <target>` and `resolve <target>`. The latter writes the absolute path of the bookmarked item to `stdout`.

```
$ cd /Users/Tesch/Desktop/

$ touch ❤️.txt

$ bookmarks create ❤️.txt 📦.txt

$ mv ❤️.txt ../Documents/💙.txt

$ bookmarks resolve 📦.txt
/Users/Tesch/Documents/💙.txt
```
