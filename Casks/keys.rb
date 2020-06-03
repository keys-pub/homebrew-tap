cask 'keys' do
    version '0.0.47'
    sha256 'e1b6823f58563b6487770d7417f87d2d0e450522a02daedff6f06b27f0b52804'

    url "https://github.com/keys-pub/app/releases/download/v0.0.47/Keys-0.0.47-mac.zip"
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
