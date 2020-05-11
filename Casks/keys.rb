cask 'keys' do
    version '0.0.45'
    sha256 'f464b085abed6ea390de6267d4ffc3220e4f1be8037892cce61aa63e6f51e12a'

    url "https://github.com/keys-pub/app/releases/download/v0.0.45/Keys-0.0.45-mac.zip"
    name 'Keys'
    homepage 'https://keys.pub'

    depends_on macos: '>= :sierra'

    app 'Keys.app'

    uninstall delete: [
        '/usr/local/bin/keys'
    ]

    zap trash: [
        '~/Library/Application Support/Keys',
        '~/Library/Caches/Keys',
        '~/Library/Logs/Keys',
        '~/Library/Preferences/pub.Keys.plist',
    ]
end
