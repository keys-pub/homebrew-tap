cask 'keys' do
    version '0.1.19'
    sha256 '13a1eb5589a58dba73cdbe1b80030d98f73f7307a246874ad7b9cb015fefc02c'

    url "https://github.com/keys-pub/app/releases/download/v0.1.19/Keys-0.1.19-mac.zip"
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
