cask 'keys' do
    version '0.1.7'
    sha256 '313b69a26c7ce75f0f5277721c3655f92ba44d8e750f54a36e0b50b53445dd98'

    url "https://github.com/keys-pub/app/releases/download/v0.1.7/Keys-0.1.7-mac.zip"
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
