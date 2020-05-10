cask 'keys' do
    version '0.0.43'
    sha256 'e2999064ecfc6a2b8ba3abfa8bf7157d2a8f21b2f2428cbfe8ffd29d1ba9d3c6'

    url "https://github.com/keys-pub/app/releases/download/v0.0.43/Keys-0.0.43-mac.zip"
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
