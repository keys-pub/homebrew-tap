cask 'keys' do
    version '0.0.46'
    sha256 'de8a42a18ddff491ce9fe9f267ec49b4a39fb6e5d56008bf95e030be1f22628f'

    url "https://github.com/keys-pub/app/releases/download/v0.0.46/Keys-0.0.46-mac.zip"
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
