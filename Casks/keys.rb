cask 'keys' do
    version '0.0.32'
    sha256 'bf0f5c9d55392c972e5324b663241e9d3f8f912556d473570558e9a380976421'

    url "https://github.com/keys-pub/app/releases/download/v0.0.32/Keys-0.0.32-mac.zip"
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
