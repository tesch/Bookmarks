install:
	swift build --configuration release
	install .build/Release/bookmarks /usr/local/bin/bookmarks
